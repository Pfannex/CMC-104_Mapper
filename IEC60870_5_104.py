###############################################################################
#   IEC 60870-5-104 server
###############################################################################

###############################################################################
#   IMPORT
###############################################################################
from pickle import FALSE
import helper as h
import IEC60870_5_104_APDU as T104
import IEC60870_5_104_dict as d

import time
import socket

import pythoncom, threading

class counter():
    def __init_(self):
        tx_counter = 0
        rx_counter = 1
        

"""
import asyncio 

async def handle_echo(reader, writer): 
     data = await reader.read(100) 
     message = data.decode() 
     addr = writer.get_extra_info('peername') 
     print("Received %r from %r" % (message, addr))

 print("Send: %r" % message)
 writer.write(data) 
 await writer.drain() 

print("Close the client socket") 
writer.close() 

loop = asyncio.get_event_loop() 
coro = asyncio.start_server(handle_echo, '127.0.0.1', 8888, loop=loop) 

server = loop.run_until_complete(coro)
 # Serve requests until Ctrl+C is pressed 

print('Serving on {}'.format(server.sockets[0].getsockname()))
 try: 
     loop.run_forever() 
     except KeyboardInterrupt: 
          pass 
# Close the server 
server.close() 
loop.run_until_complete(server.wait_closed()) 
loop.close()
        
"""
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
        self.ip = ip
        self.port = port
        self.is_connected = False
        self.u_frame_confirmation = False
        
        self.tcp_server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.tcp_server.bind((self.ip, self.port))
        
        self.start_server()
        
    def start_server(self):
        
        self.tcp_server.listen(5)
        h.log('IEC 60870-5-104 Server listening on {}:{}'.format(self.ip, self.port))
        self.client_socket, address = self.tcp_server.accept()   #waiting for client Code Stops here
        h.log('IEC 60870-5-104 Client connected -  {}:{}'.format(address[0], address[1]))
        #self.tcp_server.settimeout(2)

        #thread = threading.Thread(target=self.handle_client_connection, kwargs={'cmEngine_id': cmEngine_id})
        thread = threading.Thread(target=self.check_connection)
        thread.start()
        #save

        self.handle_client_connection()

    def check_connection(self):
        while True:
            try:
                if self.is_connected:
                    list = [0x68, 4, 0x43, 0x00, 0x00, 0x00]      
                    data = bytearray(list)
                    self.u_frame_confirmation = False
                    self.client_socket.send(data)
                    h.log("-> U (TESTFR act)")
                    time.sleep(5)
                    #print("sleep done")
                    if self.u_frame_confirmation == False and self.is_connected:
                        h.log_error("no confiirmation from client")   
                        self.restart_server()
            except:
                h.log_error("send TestFrame failed!")   
                self.client_socket.close()
                self.is_connected = False
                self.start_server()

    def restart_server(self):
        h.log("Restart Server")
        self.is_connected = False
        self.rx_counter = 0
        self.tx_counter = 0
        self.client_socket.close()
        self.start_server()

    #--- handle client Rx-Data ------------------------------------------------
    def handle_client_connection(self):
        incomplete = False
        while True:
            try:
                if incomplete:
                    msg += self.client_socket.recv(1024)
                else:  msg = self.client_socket.recv(1024)
                if len(msg) == 0:
                    h.log_error("Client down")
                    self.restart_server()
                    break
                else:
                    if msg[0] == 0x68:  #start
                        print(msg)
                        if msg[1] == len(msg)-2:
                            incomplete = False
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
                            incomplete = True
            except:
                h.log_error("Rx from Client")
                self.restart_server()



    #--- U-Frame handle  ------------------------------------------------------
    def handle_uFrame(self, frame):
        if frame[2] == 0x07:                              
            #h.log("<- U (STARTDT act)")
            data = bytearray(frame)
            data[2] = 0x0B
            self.client_socket.send(data)
            self.is_connected = True
            #h.log("-> U (STARTDT con)")
        elif frame[2] == 0x13:                              
           # h.log("<- U (STOPDT act)")
            data = bytearray(frame)
            data[2] = 0x23
            self.client.send(data)
            #h.log("-> U (STOPDT con)")
        elif frame[2] == 0x43:                              
            #h.log("<- U (TESTFR act)")
            data = bytearray(frame)
            data[2] = 0x83
            self.client_socket.send(data)
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
            self.iFrame_callback(APDU, self.callback_send)  #other I-Frame

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
        h.log("-> I ({}/{}) [{}-{}-{}] - TI[{}] - Value: {}".format(self.tx_counter, self.rx_counter,
                                                         APDU.ASDU.InfoObject.address._1,
                                                         APDU.ASDU.InfoObject.address._2,
                                                         APDU.ASDU.InfoObject.address._3,
                                                         APDU.ASDU.TI.Typ,
                                                         APDU.ASDU.InfoObject.dataObject[0].detail[4].state))
        self.client_socket.send(data)
        self.tx_counter += 1  
    
    #--- send callback from main  ---------------------------------------------
    def callback_send(self, cmc_is_on):
        if cmc_is_on: 
            value = 0b00000001
        else: value = 0b00000000
        self.send_iFrame(14,1,value)

