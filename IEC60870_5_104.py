###############################################################################
#   IEC 60870-5-104 server
###############################################################################

###############################################################################
#   IMPORT
###############################################################################
import helper as h
import IEC60870_5_104_APDU as T104
import IEC60870_5_104_dict as d

import time
import socket

###############################################################################
#   IEC60870-5-104 Server
###############################################################################
class IEC_104_Server():
    def __init__(self, ga_callback, iFrame_callback, ip, port):
        self.rx_counter = 0
        self.tx_counter = 0
        self.testframe_ok = False
        self.ga_callback = ga_callback
        self.iFrame_callback = iFrame_callback
        
        tcp_server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        tcp_server.bind((ip, port))
        
        tcp_server.listen(5)
        h.log('IEC 60870-5-104 Server listening on {}:{}'.format(ip, port))
        self.client_socket, address = tcp_server.accept()   #waiting for client Code Stops here
        h.log('IEC 60870-5-104 Client connected -  {}:{}'.format(address[0], address[1]))
        tcp_server.settimeout(2)
        self.handle_client_connection()


    #--- handle client Rx-Data ------------------------------------------------
    def handle_client_connection(self):
        while True:
            try:
                msg = self.client_socket.recv(1024)
            except socket.error as e:
                err = e.args[0]
                # this next if/else is a bit redundant, but illustrates how the
                # timeout exception is setup
                if err == 'timed out':
                    time.sleep(1)
                    h.log('recv timed out, retry later')
                    self.rx_counter = 0
                    self.tx_counter = 0
                    continue
                else:
                    h.log_error(e)
                    self.client_socket.close()
                    #sys.exit(1)
            except socket.error as e:
                # Something else happened, handle error, exit, etc.
                h.log_error(e)
                self.client_socket.close()
                #sys.exit(1)
            else:
                if len(msg) == 0:
                    h.log('orderly shutdown on server end')
                    self.client_socket.close()
                    #sys.exit(0)
                else:
                    if msg[0] == 0x68:  #start
                        if msg[1] == len(msg)-2:
                            #S-Frame
                            if msg[2] & 0b00000011 == 0b01:    #01 S-Frame
                                self.handle_sFrame(msg)
                            #U-Frame
                            if msg[2] & 0b00000011 == 0b11:    #11 U-Frame
                                self.handle_uFrame(msg)
                            #I-Frame        
                            if msg[2] & 0b00000001 == 0b0:     #.0 I-Frame 
                                self.rx_counter += 1
                                self.handle_iFrame(msg)
                        else:
                            h.log_error("Wrong size of incomming IEC 60870-5-104 Frame")

    #--- U-Frame handle  ------------------------------------------------------
    def handle_uFrame(self, frame):
        if frame[2] == 0x07:                              
            h.log("<- U (STARTDT act)")
            data = bytearray(frame)
            data[2] = 0x0B
            self.client_socket.send(data)
            h.log("-> U (STARTDT con)")
        elif frame[2] == 0x13:                              
            h.log("<- U (STOPDT act)")
            data = bytearray(frame)
            data[2] = 0x23
            self.client.send(data)
            h.log("-> U (STOPDT con)")
        elif frame[2] == 0x43:                              
            h.log("<- U (TESTFR act)")
            data = bytearray(frame)
            data[2] = 0x83
            self.client_socket.send(data)
            h.log("-> U (TESTFR con)")
        else:
            h.log('<- unknown U {}'.format(frame))
    
    #--- S-Frame handle  ------------------------------------------------------
    def handle_sFrame(self, frame):
        h.log("<- S (Rx con) Rx = " + str((frame[4] | frame[5]<<8)>>1))

    #--- I-Frame handle  ------------------------------------------------------
    def handle_iFrame(self, frame):
        global rx_counter, tx_counter
        APDU = T104.APDU(frame)
        h.log("<- I [{}-{}-{}] - {} - {}".format(APDU.ASDU.InfoObject.address._1,
                                                APDU.ASDU.InfoObject.address._2,
                                                APDU.ASDU.InfoObject.address._3,
                                                APDU.ASDU.TI.ref,
                                                APDU.ASDU.TI.des))
        APDU.pO()
            
        #confirm activation frame
        if APDU.ASDU.COT.short == "act":
            data = bytearray(frame)
            data[2] = (self.tx_counter & 0b0000000001111111) << 1
            data[3] = (self.tx_counter & 0b0111111110000000) >> 7
            data[4] = (self.rx_counter & 0b0000000001111111) << 1
            data[5] = (self.rx_counter & 0b0111111110000000) >> 7
            data[8] = APDU.ASDU.Test<<8 | APDU.ASDU.PN<<7 | 7 
            self.client_socket.send(data)
            h.log("-> I ({}/{}) - COT = {}".format(self.tx_counter, self.rx_counter,
                                                    d.cot[7]["long"]))
            self.tx_counter += 1
            
        #callback to main
        if APDU.ASDU.TI.Typ == 100:     #C_IC_NA_1 - (General-) Interrogation command 
            self.ga_callback(APDU)
        else:
            self.iFrame_callback(APDU)  #other I-Frame

    #--- send I-Frame  --------------------------------------------------------
    """
    def send_iFrame(ti, value):
        global rx_counter, tx_counter
        list = [0x68, 0x0E, 0x02, 0x00, 0x02, 0x00,
                ti, 0x01, 0x03, 0x00, 0x0a, 0x0b, 
                0x32, 0x33, 0x3C, value]       
        data = bytearray(list)
        data[2] = (tx_counter & 0b0000000001111111) << 1
        data[3] = (tx_counter & 0b0111111110000000) >> 7
        data[4] = (rx_counter & 0b0000000001111111) << 1
        data[5] = (rx_counter & 0b0111111110000000) >> 7
            
        #APDU = splitFrame(data)
        #print_iFrame(APDU)
            
        client_socket.send(data)
        print ("-> I ({}/{})".format(tx_counter, rx_counter))
        tx_counter += 1                                   

    """