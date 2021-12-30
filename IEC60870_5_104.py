###############################################################################
#   IEC 60870-5-104 server
###############################################################################

###############################################################################
#   IMPORT
###############################################################################
from typing import Text
import helper as h
import time
import socket
import threading
 
###############################################################################
#   IEC60870-5-104 Server
###############################################################################
class Server(threading.Thread):
    def __init__(self, callback, ip, port):
        self.callback = callback
        #TCP-Server
        self.IP = ip
        self.port = port
        self.RxCounter = 0
        self.TxCounter = 0
        
        self.TCPsever = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.TCPsever.bind((self.IP, self.port))
        self.TCPsever.listen(5)  # max backlog of connections
        h.log('IEC 60870-5-104 Server listening on {}:{}'.format(self.IP, self.port))
        
        threading.Thread.__init__(self)
        self.running = True
        self.start()
    def run(self):  #threat running continuously
        while self.running:
            self.client_socket, address = self.TCPsever.accept()   #waiting for client
            h.log('IEC 60870-5-104 Client connectet -  {}:{}'.format(address[0], address[1]))
            self.handle_client_connection(self.client_socket)
            h.log('IEC 60870-5-104 Server listening on {}:{}'.format(self.IP, self.port))
    def stop(self):
        self.running = False
    def resume(self):
        self.running = True
        
    #--- handle client Rx-Data ------------------------------------------------
    def handle_client_connection(self, client_socket):
        try: 
            while True: 
                try:
                    request = client_socket.recv(1024)
                except Exception as inst:
                    client_socket.close()
                    h.log_error(inst)
                    break
                if request[0] == 0x68:
                    #S-Frame
                    if (request[2] & 1 != 0) & (request[2]>>1 & 1 == 0):    #01 S-Frame
                        self.handle_sFrame(request)
                    #U-Frame
                    if (request[2] & 1 != 0) & (request[2]>>1 & 1 != 0):    #11 U-Frame
                        self.handle_uFrame(request, client_socket)
                    #I-Frame        
                    if request[2] & 1 == 0:                                 #_0 I-Frame
                        self.handle_iFrame(request, client_socket)
        finally: 
            h.log_error("client disconnected")
            client_socket.close()

    #--- U-Frame handle  ------------------------------------------------------
    def handle_uFrame(self, frame, client):
        if frame[2] == 0x07:                              
            h.log("<- U (STARTDT act)")
            data = bytearray(frame)
            data[2] = 0x0B
            client.send(data)
            h.log("-> U (STARTDT con)")
        elif frame[2] == 0x13:                              
            h.log("<- U (STOPDT act)")
            data = bytearray(frame)
            data[2] = 0x23
            client.send(data)
            h.log("-> U (STOPDT con)")
        elif frame[2] == 0x43:                              
            h.log("<- U (TESTFR act)")
            data = bytearray(frame)
            data[2] = 0x83
            client.send(data)
            h.log("-> U (TESTFR con)")
        else:
            h.log('<- unknown U {}'.format(frame))
   
    #--- S-Frame handle  ------------------------------------------------------
    def handle_sFrame(self, frame):
        h.log("<- S (Rx con) Rx = " + 
                str((frame[4] | frame[5]<<8)>>1))

    #--- I-Frame handle  ------------------------------------------------------
    def handle_iFrame(self, frame, client):
        APDU = splitFrame(frame)
        print_iFrame(APDU)
        
        if frame[1] == 0x0e:   #I-Frame
            self.RxCounter += 1
                
            if frame[6] == 0x64:   #C_IC_NA_1 (100)
                print ("<- I (C_IC_NA_1 Act [100])")
                data = bytearray(frame)
                data[2] = (self.TxCounter & 0b0000000001111111) << 1
                data[3] = (self.TxCounter & 0b0111111110000000) >> 7
                data[4] = (self.RxCounter & 0b0000000001111111) << 1
                data[5] = (self.RxCounter & 0b0111111110000000) >> 7
                data[8] = 0x07
                data[10] = 0xc3
                data[11] = 0x33
                
                client.send(data)
                print ("-> I (C_IC_NA_1 ActCon) ("+str(self.TxCounter)+"/"+str(self.RxCounter)+")")
                self.TxCounter += 1
                #print ("update Counter - Rx: " + str(RxCounter) + " | Tx: " + str(TxCounter))
                
            elif frame[6] == 0x2e:   #C_DC_NA_1 (46)
                print ("<- I (C_DC_NA_1 Act [46])")
                val = "IV"
                if frame[15] == 1:
                    val = "OPEN"
                if frame[15] == 2:
                    val = "CLOSE"
                print ("  ----------------")                   
                print ("    Value = " + val)                   
                print ("  ----------------")                   
                data = bytearray(frame)
                data[2] = (self.TxCounter & 0b0000000001111111) << 1
                data[3] = (self.TxCounter & 0b0111111110000000) >> 7
                data[4] = (self.RxCounter & 0b0000000001111111) << 1
                data[5] = (self.RxCounter & 0b0111111110000000) >> 7
                data[8] = 0x07
                
                client.send(data)
                print ("-> I (C_DC_NA_1 ActCon) ("+str(self.TxCounter)+"/"+str(self.RxCounter)+")")
                self.TxCounter += 1
                #print ("update Counter - Rx: " + str(RxCounter) + " | Tx: " + str(TxCounter))
                    
            else:
                print ("<- I (unknown)")
                
###############################################################################
#   IEC60870-5-104 I-Frame Type
###############################################################################
   # RxCounter Zugriff??
class _APDU():
    class APCI():
        start  = 0
        length = 0
        class CF():
            _1 = 0
            _2 = 0
            _3 = 0
            _4 = 0
            Tx  = 0
            Rx  = 0
    class ASDU():
        TI     = 0
        TI_ref = ""
        TI_des = ""
        NofObjects = 0
        Test = 0
        PN   = 0
        COT  = 0
        ORG  = 0
        class CASDU():
            DEZ    = 0
            CASDU1 = 0
            CASDU2 = 0
        class IOA():
            DEZ  = 0
            OKT1 = 0
            OKT2 = 0
            OKT3 = 0
            
#--- dictionary I-Frame type identicikation  -----------------------------------------------------------
dictTI = {1: {"ref":"M_SP_NA_1", "des":"Single point information"},
          3: "M_DP_NA_1",
          5: "pawpaw",
          7: "pawpaw",
          9: "pawpaw",
          11: "pawpaw",
          13: "pawpaw",
          15: "pawpaw",
          20: "pawpaw",
          21: "pawpaw",
          30: "pawpaw",
          31: "pawpaw",
          32: "pawpaw",
          33: "pawpaw",
          34: "pawpaw",
          35: "pawpaw",
          36: "pawpaw",
          37: "pawpaw",
          38: "pawpaw",
          39: "pawpaw",

          45: "pawpaw",          
          46: "pawpaw",          
          47: "pawpaw",          
          48: "pawpaw",          
          49: "pawpaw",          
          50: "pawpaw",          
          51: "pawpaw",          
          58: "pawpaw",          
          59: "pawpaw",          
          60: "pawpaw",          
          61: "pawpaw",          
          62: "pawpaw",          
          63: "pawpaw",          
          64: "pawpaw"                  
          }        
###############################################################################
#   IEC60870-5-104 I-Frame splitter
###############################################################################
def splitFrame(frame):
    APDU = _APDU()
    APDU.APCI.start =       frame[0]
    APDU.APCI.length =      frame[1] 
    APDU.APCI.CF._1 =       frame[2]    
    APDU.APCI.CF._2 =       frame[3]    
    APDU.APCI.CF._3 =       frame[4]    
    APDU.APCI.CF._4 =       frame[5]    
    APDU.APCI.CF.Tx =       (frame[2] | frame[3]<<8)>>1      
    APDU.APCI.CF.Rx =       (frame[4] | frame[5]<<8)>>1      
    APDU.ASDU.TI =          frame[6]    
    return APDU
                
#--- print I-Frame  -----------------------------------------------------------
def print_iFrame(APDU):
    print ("------------------------------------------------")
    print ("  # - 8765 4321 - 0x   -  DEZ - Information")
    print ("------------------------------------------------")
    print ("  1 - " + formatPrintLine(APDU.APCI.start) + " - start")
    print ("  2 - " + formatPrintLine(APDU.APCI.length) + " - APDU lenght")
    print ("  3 - .... ...0 - 0x00 -    0 - Format = I")
    print ("  3 - " + formatPrintLine(APDU.APCI.CF._1) + " - CF1")
    print ("  4 - " + formatPrintLine(APDU.APCI.CF._2) + " - CF2")
    print ("  5 - " + formatPrintLine(APDU.APCI.CF._3) + " - CF3")
    print ("  6 - " + formatPrintLine(APDU.APCI.CF._4) + " - CF4")
    print ("    - .... .... - 0x.. - {0:4} - Tx count".format(APDU.APCI.CF.Tx))
    print ("    - .... .... - 0x.. - {0:4} - Rx count".format(APDU.APCI.CF.Rx))
    print ("------------------------------------------------")

#--- format printLine  --------------------------------------------------------
def formatPrintLine(value):
    line = "{0:04b} {1:04b} - 0x{2:02X} - {3:4}".format(value>>4, value&0b00001111, value, value)
    return line
