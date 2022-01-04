###############################################################################
#   IEC 60870-5-104 server
###############################################################################

###############################################################################
#   IMPORT
###############################################################################
from typing import Text
import struct
import json
import pprint
import yaml
import helper as h
import IEC60870_5_104_Typs as T104
import time
import socket
import threading
 
###############################################################################
#   IEC60870-5-104 Server
###############################################################################
class Server(threading.Thread):
    def __init__(self, GA_callback, iFrame_callback, ip, port):
        self.GA_callback = GA_callback
        self.iFrame_callback = iFrame_callback
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
                    self.RxCounter = 0
                    self.TxCounter = 0
                    h.log_error(inst)
                    break
                
                if not request:
                    h.log_error("no request")
                    client_socket.close()
                    self.RxCounter = 0
                    self.TxCounter = 0
                    break
                    
                else:
                    if request[0] == 0x68:
                        #S-Frame
                        if request[2] & 0b00000011 == 0b01:    #01 S-Frame
                            self.handle_sFrame(request)
                        #U-Frame
                        if request[2] & 0b00000011 == 0b11:    #11 U-Frame
                            self.handle_uFrame(request, client_socket)
                        #I-Frame        
                        if request[2] & 0b00000001 == 0b0:     #.0 I-Frame                                 #_0 I-Frame
                            self.RxCounter += 1
                            self.handle_iFrame(request, client_socket)
                    
        finally: 
            h.log_error("client disconnected")
            client_socket.close()
            self.RxCounter = 0
            self.TxCounter = 0

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
        xAPDU = T104._xAPDU(frame)
        print_iFrame(xAPDU)
        
        #confirm activation frame
        if APDU.ASDU.COT.short == "act":
            data = bytearray(frame)
            data[2] = (self.TxCounter & 0b0000000001111111) << 1
            data[3] = (self.TxCounter & 0b0111111110000000) >> 7
            data[4] = (self.RxCounter & 0b0000000001111111) << 1
            data[5] = (self.RxCounter & 0b0111111110000000) >> 7
            data[8] = APDU.ASDU.Test<<8 | APDU.ASDU.PN<<7 | 7 
            client.send(data)
            print ("-> I ({}/{})".format(self.TxCounter, self.RxCounter))
            self.TxCounter += 1
        
        #callback to main
        if APDU.ASDU.TI.Typ == 100:     #C_IC_NA_1 - (General-) Interrogation command 
            self.GA_callback(APDU)
        else:
            self.iFrame_callback(APDU)  #other I-Frame

    #--- send I-Frame  --------------------------------------------------------
    def send_iFrame(self, TI, value):
        list = [0x68, 0x0E, 0x02, 0x00, 0x02, 0x00,
                TI, 0x01, 0x03, 0x00, 0x0a, 0x0b, 
                0x32, 0x33, 0x3C, value]       
        data = bytearray(list)
        data[2] = (self.TxCounter & 0b0000000001111111) << 1
        data[3] = (self.TxCounter & 0b0111111110000000) >> 7
        data[4] = (self.RxCounter & 0b0000000001111111) << 1
        data[5] = (self.RxCounter & 0b0111111110000000) >> 7
        
        APDU = splitFrame(data)
        print_iFrame(APDU)
        
        self.client_socket.send(data)
        print ("-> I ({}/{})".format(self.TxCounter, self.RxCounter))
        self.TxCounter += 1
                
###############################################################################
#   IEC60870-5-104 I-Frame splitter
###############################################################################
def splitFrame(frame):
    APDU = T104._APDU()
    #APCI
    APDU.APCI.start =           frame[0]
    APDU.APCI.length =          frame[1] 
    APDU.APCI.CF._1 =           frame[2]    
    APDU.APCI.CF._2 =           frame[3]    
    APDU.APCI.CF._3 =           frame[4]    
    APDU.APCI.CF._4 =           frame[5]    
    APDU.APCI.CF.Tx =           (frame[3]<<8 | frame[2])>>1      
    APDU.APCI.CF.Rx =           (frame[5]<<8 | frame[4])>>1 
    #ASDU     
    APDU.ASDU.TI.Typ =          frame[6]    
    APDU.ASDU.TI.ref =          T104.dictTI[APDU.ASDU.TI.Typ]["ref"]   
    APDU.ASDU.TI.des =          T104.dictTI[APDU.ASDU.TI.Typ]["des"] 
    APDU.ASDU.SQ =              frame[7]>>7
    APDU.ASDU.NofObjects =      frame[7] & 0b01111111
    APDU.ASDU.Test =            frame[8]>>7
    APDU.ASDU.PN =              (frame[8] & 0b01000000)>>6
    APDU.ASDU.COT.DEZ =         frame[8] & 0b00111111
    APDU.ASDU.COT.long =        T104.dictCOT[APDU.ASDU.COT.DEZ]["long"]
    APDU.ASDU.COT.short =       T104.dictCOT[APDU.ASDU.COT.DEZ]["short"]
    APDU.ASDU.ORG =             frame[9]
    APDU.ASDU.CASDU._1 =        frame[10]
    APDU.ASDU.CASDU._2 =        frame[11]
    APDU.ASDU.CASDU.DEZ =       frame[11]<<8 | frame[10]
    #InfoObject
    APDU.ASDU.InfoObject.IOA._1 =  frame[12] 
    APDU.ASDU.InfoObject.IOA._2 =  frame[13] 
    APDU.ASDU.InfoObject.IOA._3 =  frame[14] 
    APDU.ASDU.InfoObject.IOA.DEZ = frame[14]<<16 | frame[13]<<8 | frame[12] 
    
    try:
        IOE = T104.InfoObjectElements[APDU.ASDU.TI.Typ]
        APDU.ASDU.InfoObject.InfoObjektElements \
            = fill_InfoObjectElements(APDU.ASDU.TI.Typ, IOE, frame)
    except Exception as inst:
        h.log_error(inst)

    return APDU

#--- fill Info Object Element  ------------------------------------------------
def fill_InfoObjectElements(type, InfoObjectElements, frame):
    IOE = InfoObjectElements
    if type == 1:
        pass
    elif type == 2:
        pass
    elif type == 45:
        IOE["e1"]["SE"] = frame[15]>>7
        IOE["e1"]["QU"] = (frame[15] & 0b01111100)>>2
        IOE["e1"]["SCS"]= (frame[15] & 0b00000001)
    elif type == 46:
        IOE["e1"]["SE"] = frame[15]>>7
        IOE["e1"]["QU"] = (frame[15] & 0b01111100)>>2
        IOE["e1"]["DCS"]= (frame[15] & 0b00000011)
    elif type == 58:
        IOE["e1"]["SE"] = frame[15]>>7
        IOE["e1"]["QU"] = (frame[15] & 0b01111100)>>2
        IOE["e1"]["SCS"]= (frame[15] & 0b00000001)
        ms = frame[17]<<8 | frame[16]
        IOE["e2"]["S"]  = int(ms/1000)
        IOE["e2"]["MS"] = ms - int(ms/1000)*1000
        IOE["e2"]["IV"] = frame[18]>>7
        IOE["e2"]["MIN"]= frame[18] & 0b00111111
        IOE["e2"]["SU"] = frame[19]>>7
        IOE["e2"]["H"]  = frame[19] & 0b00111111
        IOE["e2"]["DOW"]= frame[20]>>5
        IOE["e2"]["D"]  = frame[20] & 0b00011111
        IOE["e2"]["M"]  = frame[21] & 0b00001111
        IOE["e2"]["Y"]  = frame[22] & 0b01111111
        
        
    elif type == 100:
        IOE["e1"]["QOIe"] = frame[15]
    
    return IOE
                      
###############################################################################
#   print I-Frame
###############################################################################
def print_iFrame(APDU):
    print ("")
    print ("=<APDU>================================================================================")
    print ("  -<APCI>------------------------------------------------------------------------------")
    print ("  # - 8765 4321 - 0x   -  DEZ - Information")
    print ("  .....................................................................................")
    print ("  1 - " + formatPrintLine(APDU.APCI.start) + " - start")
    print ("  2 - " + formatPrintLine(APDU.APCI.length) + " - APDU lenght")
    print ("  3 - .... ...0 - 0x00 -    0 - Format = I")
    print ("  3 - " + formatPrintLine(APDU.APCI.CF._1) + " - CF1")
    print ("  4 - " + formatPrintLine(APDU.APCI.CF._2) + " - CF2")
    print ("  5 - " + formatPrintLine(APDU.APCI.CF._3) + " - CF3")
    print ("  6 - " + formatPrintLine(APDU.APCI.CF._4) + " - CF4")
    print ("                         {0:4} - Tx count".format(APDU.APCI.CF.Tx))
    print ("                         {0:4} - Rx count".format(APDU.APCI.CF.Rx))
    print ("  -<ASDU>------------------------------------------------------------------------------")
    print ("  # - 8765 4321 - 0x   -  DEZ - Information")
    print ("  .....................................................................................")
    print ("  7 - " + formatPrintLine(APDU.ASDU.TI.Typ) + " - Type Identifier")
    print ("                                " + APDU.ASDU.TI.ref)
    print ("                                " + APDU.ASDU.TI.des)
    print ("      ---------------------------------------------------------------------------------")
    print ("  8 - {0}... .... - 0x{0:02X} - {0:4} - SQ (Structure Qualifier)".format(APDU.ASDU.SQ))
    print ("  8 - .{0:03b} {1:04b} - 0x{2:02X} - {2:4} - Number of objects".format(APDU.ASDU.NofObjects>>4, APDU.ASDU.NofObjects&0b00001111, APDU.ASDU.NofObjects))
    print ("  9 - {0}... .... - 0x{0:02X} - {0:4} - T (Test)".format(APDU.ASDU.Test))
    print ("  9 - .{0}.. .... - 0x{0:02X} - {0:4} - P/N (positive/negative)".format(APDU.ASDU.PN))
    print ("  9 - ..{0:02b} {1:04b} - 0x{2:02X} - {2:4} - Cause of transmission (COT)".format(APDU.ASDU.COT.DEZ>>4, APDU.ASDU.COT.DEZ&0b00001111, APDU.ASDU.COT.DEZ))
    print ("                                " + APDU.ASDU.COT.long + " - " + APDU.ASDU.COT.short)
    print (" 10 - " + formatPrintLine(APDU.ASDU.ORG) + " - Originator Address (ORG)")
    print ("      ---------------------------------------------------------------------------------")
    print (" 11 - " + formatPrintLine(APDU.ASDU.CASDU._1) + " - CASDU1 (LSB) Address Field (Common Address of ASDU)")
    print (" 12 - " + formatPrintLine(APDU.ASDU.CASDU._2) + " - CASDU2 (MSB) Address Field (Common Address of ASDU)")
    addr ="{:6,d}".format(APDU.ASDU.CASDU.DEZ)
    addr = addr.replace(",",".")
    print ("                       "+ addr +" - CASDU Address Field (Common Address of ASDU)")
    print ("    -<InfoObject>----------------------------------------------------------------------")
    print (" 13 - " + formatPrintLine(APDU.ASDU.InfoObject.IOA._1) + " - Information Object Address (IOA) (LSB)")
    print (" 14 - " + formatPrintLine(APDU.ASDU.InfoObject.IOA._2) + " - Information Object Address (IOA) (...)")
    print (" 15 - " + formatPrintLine(APDU.ASDU.InfoObject.IOA._3) + " - Information Object Address (IOA) (MSB)")
    addr ="{:10,d}".format(APDU.ASDU.InfoObject.IOA.DEZ)
    addr = addr.replace(",",".")
    print ("                   "+ addr + " - Information Object Address (IOA)")
    print ("    -<InfoObjectElements>--------------------------------------------------------------")
    print ("      {}".format(APDU.ASDU.InfoObject.InfoObjektElements))
    print ("=======================================================================================")
    print ("")

#--- format printLine  --------------------------------------------------------
def formatPrintLine(value):
    line = "{0:04b} {1:04b} - 0x{2:02X} - {2:4}".format(value>>4, value&0b00001111, value)
    return line


        
"""
        if APDU.ASDU.TI.Typ == 50:
            list1=[frame[15], frame[16], frame[17], frame[18]]
            x = bytearray(list1) 
            [data] = struct.unpack("f", x)
            data += 1
            print (data)
"""
        
        #print ("other I-Frame")
        
        #to find COT act key by string "act"
        #mydict = {'george':16,'amber':19}
        #res = dict((v,k) for k,v in mydict.iteritems())
        #print(res[16]) # Prints george
              


"""        
        if frame[1] == 0x0e:   #I-Frame
            print ("is I-Frame")
            self.RxCounter += 1
                
            if frame[6] == 0x64:   #C_IC_NA_1 (100)
                #print ("<- I (C_IC_NA_1 Act [100])")
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

            else:
                print ("other I-Frame")
                data = bytearray(frame)
                data[2] = (self.TxCounter & 0b0000000001111111) << 1
                data[3] = (self.TxCounter & 0b0111111110000000) >> 7
                data[4] = (self.RxCounter & 0b0000000001111111) << 1
                data[5] = (self.RxCounter & 0b0111111110000000) >> 7
                data[8] = 0x07
                
                client.send(data)
                print ("-> I () ("+str(self.TxCounter)+"/"+str(self.RxCounter)+")")
                self.TxCounter += 1
                
                
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
"""         

