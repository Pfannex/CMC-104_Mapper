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
#import yaml
import helper as h
import IEC60870_5_104_APDU as T104
import IEC60870_5_104_dict as d

import time
import socket
import threading



import win32com.client # gget e.g. via "pip install pywin32"

myTest = "new"
import pythoncom
 
###############################################################################
#   IEC60870-5-104 Server
###############################################################################
class Server(threading.Thread):
    def __init__(self, GA_callback, iFrame_callback, ip, port):

        self.cmEngine = win32com.client.Dispatch("OMICRON.CMEngAL")
        self.deviceID = 0



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
            h.log('IEC 60870-5-104 Client connected -  {}:{}'.format(address[0], address[1]))
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
                    h.log_error(inst, "handle_client_connection - receive")
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
            data[2] = (self.TxCounter & 0b0000000001111111) << 1
            data[3] = (self.TxCounter & 0b0111111110000000) >> 7
            data[4] = (self.RxCounter & 0b0000000001111111) << 1
            data[5] = (self.RxCounter & 0b0111111110000000) >> 7
            data[8] = APDU.ASDU.Test<<8 | APDU.ASDU.PN<<7 | 7 
            client.send(data)
            h.log("-> I ({}/{}) - COT = {}".format(self.TxCounter, self.RxCounter,
                                                    d.cot[7]["long"]))
            self.TxCounter += 1
        
        #callback to main
        if APDU.ASDU.TI.Typ == 100:     #C_IC_NA_1 - (General-) Interrogation command 
            self.GA_callback(APDU)
        else:
            #self.iFrame_callback(APDU)  #other I-Frame
            ioa =APDU.ASDU.InfoObject.address.DEZ
            if ioa == 1:
                self.cmcConnect()
            if ioa == 2:
                self.cmcOn()
 

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
        
        #APDU = splitFrame(data)
        #print_iFrame(APDU)
        
        self.client_socket.send(data)
        print ("-> I ({}/{})".format(self.TxCounter, self.RxCounter))
        self.TxCounter += 1

#######################################################################################################

    def cmcConnect(self):
        #pythoncom.CoInitialize()
        print(self.cmEngine)
        print(self.deviceID)
        print(self.cmEngine.DevScanForNew(False))
        deviceList = self.cmEngine.DevGetList(0)    #return all associated CMCs
        deviceID = int(deviceList[0])          #first associated CMC is used - make sure only one is associated
        self.cmEngine.DevUnlock(deviceID)
        self.cmEngine.DevLock(deviceID)
        #device information
        deviceList = deviceList.split(",")
        print("Devices found: " + str(int(len(deviceList)/4)))
        print("ID :  "+deviceList[0])
        print("SER:  "+deviceList[1])
        print("Type: "+self.cmEngine.DeviceType(self.deviceID))
        print("IP:   "+self.cmEngine.IPAddress(self.deviceID))
        print("--------------------------")

########################## geht
        self.cmEngine.Exec(self.deviceID,"out:on")
        time.sleep(2)
        self.cmEngine.Exec(self.deviceID,"out:off")
        self.cmEngine.Exec(self.deviceID,"out:ana:off(zcross)")
        #cmEngine.DevUnlock(deviceID)

    def cmcOn(self):
########################## geht nicht
        #pythoncom.CoInitialize()

        #cmEngine.DevLock(deviceID)
        print(self.cmEngine)
        print(self.deviceID)
        self.cmEngine.Exec(self.deviceID,"out:on")
        time.sleep(2)
        self.cmEngine.Exec(self.deviceID,"out:off")
        self.cmEngine.Exec(self.deviceID,"out:ana:off(zcross)")
        #cmEngine.DevUnlock(deviceID)        
                                      

