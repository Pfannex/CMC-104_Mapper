###############################################################################
#   IEC 60870-5-104 server
###############################################################################

###############################################################################
#   IMPORT
###############################################################################
#from typing import Text
#import struct
#import json
#import pprint
#import yaml
import helper as h
import IEC60870_5_104_APDU as T104
import IEC60870_5_104_dict as d

import time
import socket
#import threading

#import sys

rx_counter = 0
tx_counter = 0
testframe_ok = False
###############################################################################
#   IEC60870-5-104 Server
###############################################################################
def start_server(ga_callback, iFrame_callback, ip, port):
    tcp_server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    tcp_server.bind((ip, port))
    
    tcp_server.listen(5)
    h.log('IEC 60870-5-104 Server listening on {}:{}'.format(ip, port))
    client_socket, address = tcp_server.accept()   #waiting for client Code Stops here
    h.log('IEC 60870-5-104 Client connected -  {}:{}'.format(address[0], address[1]))
    tcp_server.settimeout(2)
    handle_client_connection(client_socket, ga_callback, iFrame_callback)


#--- handle client Rx-Data ------------------------------------------------
def handle_client_connection(client_socket, ga_callback, iFrame_callback):
    global rx_counter, tx_counter
    while True:
        try:
            msg = client_socket.recv(1024)
        except socket.error as e:
            err = e.args[0]
            # this next if/else is a bit redundant, but illustrates how the
            # timeout exception is setup
            if err == 'timed out':
                time.sleep(1)
                h.log('recv timed out, retry later')
                rx_counter = 0
                tx_counter = 0
                continue
            else:
                h.log_error(e)
                client_socket.close()
                #sys.exit(1)
        except socket.error as e:
            # Something else happened, handle error, exit, etc.
            h.log_error(e)
            client_socket.close()
            #sys.exit(1)
        else:
            if len(msg) == 0:
                h.log('orderly shutdown on server end')
                client_socket.close()
                #sys.exit(0)
            else:
                if msg[0] == 0x68:  #start
                    if msg[1] == len(msg)-2:
                        #S-Frame
                        if msg[2] & 0b00000011 == 0b01:    #01 S-Frame
                            handle_sFrame(msg)
                        #U-Frame
                        if msg[2] & 0b00000011 == 0b11:    #11 U-Frame
                            handle_uFrame(msg, client_socket)
                        #I-Frame        
                        if msg[2] & 0b00000001 == 0b0:     #.0 I-Frame 
                            rx_counter += 1
                            handle_iFrame(msg, client_socket, ga_callback, iFrame_callback)
                    else:
                        h.log_error("Wrong size of incomming IEC 60870-5-104 Frame")

#--- U-Frame handle  ------------------------------------------------------
def handle_uFrame(frame, client):
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
def handle_sFrame(frame):
    h.log("<- S (Rx con) Rx = " + str((frame[4] | frame[5]<<8)>>1))

#--- I-Frame handle  ------------------------------------------------------
def handle_iFrame(frame, client, ga_callback, iFrame_callback):
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
        data[2] = (tx_counter & 0b0000000001111111) << 1
        data[3] = (tx_counter & 0b0111111110000000) >> 7
        data[4] = (rx_counter & 0b0000000001111111) << 1
        data[5] = (rx_counter & 0b0111111110000000) >> 7
        data[8] = APDU.ASDU.Test<<8 | APDU.ASDU.PN<<7 | 7 
        client.send(data)
        h.log("-> I ({}/{}) - COT = {}".format(tx_counter, rx_counter,
                                                d.cot[7]["long"]))
        tx_counter += 1
        
    #callback to main
    if APDU.ASDU.TI.Typ == 100:     #C_IC_NA_1 - (General-) Interrogation command 
        ga_callback(APDU)
    else:
        iFrame_callback(APDU)  #other I-Frame

#--- send I-Frame  --------------------------------------------------------
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
"""














"""
import sys
import socket
from time import sleep

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(('127.0.0.1',9999))
s.settimeout(2)

while True:
    try:
        msg = s.recv(4096)
    except socket.timeout, e:
        err = e.args[0]
        # this next if/else is a bit redundant, but illustrates how the
        # timeout exception is setup
        if err == 'timed out':
            sleep(1)
            print 'recv timed out, retry later'
            continue
        else:
            print e
            sys.exit(1)
    except socket.error, e:
        # Something else happened, handle error, exit, etc.
        print e
        sys.exit(1)
    else:
        if len(msg) == 0:
            print 'orderly shutdown on server end'
            sys.exit(0)
        else:
            # got a message do something :)
"""