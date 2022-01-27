
###############################################################################
#   IEC 60870-5-104 server controll
###############################################################################
###############################################################################
#   IMPORT
###############################################################################
import helper as h
import IEC60870_5_104_APDU as T104
import IEC60870_5_104_dict as d
import socketserver

class counter():
    def __init_(self):
        tx_counter = 0
        rx_counter = 1
        
###############################################################################
#   callback to main
###############################################################################
class SetCallback():
    def set_callback(self, ga_callback, iFrame_callback):
        self.ga_callback = ga_callback
        self.iFrame_callback = iFrame_callback
    def DoCallback(self, destination, APDU):
        if destination == "GA":
            self.ga_callback(APDU)
        else: self.iFrame_callback(APDU)
callback = SetCallback()

###############################################################################
#   IEC 60870-5-104 server
###############################################################################
class MyTCPHandler(socketserver.StreamRequestHandler):   
    def handle(self):
        #h.log('IEC 60870-5-104 Server listening on {}:{}'.format(self.ip, self.port))
        self.rx_counter = 0
        self.tx_counter = 0
        self.callback = callback
        h.log('IEC 60870-5-104 Client connected -  {}:{}'.format(self.client_address[0],self.client_address[1]))
        while True:
            with self.request.makefile('rwb') as file:
                msg = file.read(2)
                assert msg[0] == 0x68
                msg += file.read(msg[1])
                
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
            self.request.sendall(data)
            self.is_connected = True
            h.log("-> U (STARTDT con)")
        elif frame[2] == 0x13:                              
            h.log("<- U (STOPDT act)")
            data = bytearray(frame)
            data[2] = 0x23
            self.request.sendall(data)
            h.log("-> U (STOPDT con)")
        elif frame[2] == 0x43:                              
            #h.log("<- U (TESTFR act)")
            data = bytearray(frame)
            data[2] = 0x83
            self.request.sendall(data)
            #h.log("-> U (TESTFR con)")
        elif frame[2] == 0x83:
            h.log("<- U (TESTFR con)")
            self.u_frame_confirmation = True
            #self.u_frame_con = True
            #self.send_u_frame == False
        else:
            h.log('<- unknown U {}'.format(frame))
    
    #--- S-Frame handle  ------------------------------------------------------
    def handle_sFrame(self, frame):
        h.log("<- S (Rx con) Rx = " + str((frame[4] | frame[5]<<8)>>1))

    #--- I-Frame handle  ------------------------------------------------------
    def handle_iFrame(self, frame):
        APDU = T104.APDU(frame)
        h.log("<- I - IOA[{}-{}-{}] - TI[{}]".format(APDU.ASDU.InfoObject.address._1,
                                                 APDU.ASDU.InfoObject.address._2,
                                                 APDU.ASDU.InfoObject.address._3,
                                                 APDU.ASDU.TI.Typ))
        print(APDU.ASDU.InfoObject.info_object_data_String())
        #APDU.pO()
            
        #confirm activation frame
        if APDU.ASDU.COT.short == "act":
            data = bytearray(frame)
            data[2] = (self.tx_counter & 0b0000000001111111) << 1
            data[3] = (self.tx_counter & 0b0111111110000000) >> 7
            data[4] = (self.rx_counter & 0b0000000001111111) << 1
            data[5] = (self.rx_counter & 0b0111111110000000) >> 7
            data[8] = APDU.ASDU.Test<<8 | APDU.ASDU.PN<<7 | 7 
            self.request.sendall(data)
            h.log("-> I ({}/{}) - COT = {}".format(self.tx_counter, self.rx_counter,
                                                    d.cot[7]["long"]))
            self.tx_counter += 1
            
        #callback to main
        if APDU.ASDU.TI.Typ == 100:     #C_IC_NA_1 - (General-) Interrogation command 
            #self.ga_callback(APDU)
            self.callback.DoCallback("GA", APDU)
        else:
            self.callback.DoCallback("I", APDU)
            #self.iFrame_callback(APDU, self.callback_send)  #other I-Frame

    #--- send I-Frame  --------------------------------------------------------
    def send_iFrame(self, length, ti, info_object_data):
        list = [0x68, length, 0x02, 0x00, 0x02, 0x00,
                ti, 0x01, 0x05, 0x00, 0x64, 0x01, 
                0x02, 0x00, 0x00, info_object_data]       
        data = bytearray(list)
        data[2] = (self.tx_counter & 0b0000000001111111) << 1
        data[3] = (self.tx_counter & 0b0111111110000000) >> 7
        data[4] = (self.rx_counter & 0b0000000001111111) << 1
        data[5] = (self.rx_counter & 0b0111111110000000) >> 7
            
        APDU = T104.APDU(data)
        #APDU.pO()
        h.log("-> I - IOA[{}-{}-{}] - TI[{}]".format(self.tx_counter, self.rx_counter,
                                                           APDU.ASDU.InfoObject.address._1,
                                                           APDU.ASDU.InfoObject.address._2,
                                                           APDU.ASDU.InfoObject.address._3,
                                                           APDU.ASDU.TI.Typ))
        self.request.sendall(data)
        self.tx_counter += 1  
    
    #--- send callback from main  ---------------------------------------------
    def callback_send(self, cmc_is_on):
        if cmc_is_on: 
            value = 0b00000001
        else: value = 0b00000000
        self.send_iFrame(14,1,value)

