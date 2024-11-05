
###############################################################################
#   IEC 60870-5-104 server controll
###############################################################################
###############################################################################
#   IMPORT
###############################################################################
from cmath import log
import helper as h
import IEC60870_5_104_APDU as T104
import IEC60870_5_104_dict as d
from PySide6 import QtCore, QtGui, QtNetwork
from Qt_GUI.frm_main import Ui_frm_main
from PySide6.QtWidgets import QApplication, QMainWindow
import struct

class counter():
    def __init_(self):
        tx_counter = 0
        rx_counter = 1
        
###############################################################################
#   callback to main
###############################################################################
# class SetCallback():
#     def set_callback(self, ga_callback, iFrame_callback):
#         self.ga_callback = ga_callback
#         self.iFrame_callback = iFrame_callback
#     def DoCallback(self, destination, APDU):
#         if destination == "GA":
#             self.ga_callback(APDU)
#         else: self.iFrame_callback(APDU)
# callback = SetCallback()

###############################################################################
#   IEC 60870-5-104 server
###############################################################################
class Client_Connection(QtCore.QObject):
    def __init__(self, gi_callback, iframe_callback):
        super().__init__()
        self.gi_callback = gi_callback
        self.iframe_callback = iframe_callback

    def SetSocket(self, socket, frm_main):
        self.frm_main = frm_main
        self.rx_counter = 0
        self.tx_counter = 0
        self.socket = socket
        self.socket.connected.connect(self.on_connected)
        self.socket.disconnected.connect(self.on_disconnected)
        self.socket.readyRead.connect(self.on_readyRead)
        self.frm_main.print_memo("s","Client Connected from {}:{}".format(self.socket.peerAddress().toString(),
                                                                          self.socket.peerPort()))
        self.frm_main.tb_client_ip.setPlainText(self.socket.peerAddress().toString())
        self.frm_main.tb_client_port.setPlainText(str(self.socket.peerPort()))

    def disconnect_connection(self):
        if hasattr(self, "socket"):
            self.socket.disconnectFromHost()

    def on_connected(self):
        self.frm_main.print_memo("s","Client Connected Event")

    def on_disconnected(self):
        self.frm_main.print_memo("s","Client Disconnected")        

    def on_readyRead(self):
        msg = self.socket.read(2)
        bytes_to_read = int.from_bytes(msg[1], "big")
        msg += self.socket.read(bytes_to_read)   
        data = bytearray(msg)
        if data[0] == 0x68:  #start
            if data[1] == len(data)-2:
                #S-Frame
                if data[2] & 0b00000011 == 0b01:    #01 S-Frame
                    self.handle_sFrame(data)
                #U-Frame
                if data[2] & 0b00000011 == 0b11:    #11 U-Frame
                    self.handle_uFrame(data)
                #I-Frame        
                if data[2] & 0b00000001 == 0b0:     #.0 I-Frame 
                    self.rx_counter += 1
                    self.handle_iFrame(data)
            else:
                self.frm_main.print_memo("e","Wrong size of incomming IEC 60870-5-104 Frame")

    #--- U-Frame handle  ------------------------------------------------------
    def handle_uFrame(self, data):
        if data[2] == 0x07:                              
            self.frm_main.print_memo("104","<- U (STARTDT act)")
            data[2] = 0x0B
            self.socket.write(data)
            self.frm_main.print_memo("104","-> U (STARTDT con)")
        elif data[2] == 0x13:                              
            self.frm_main.print_memo("104","<- U (STOPDT act)")
            data[2] = 0x23
            self.socket.write(data)
            self.frm_main.print_memo("104","-> U (STOPDT con)")
        elif data[2] == 0x43:                              
            self.frm_main.print_memo("104","<- U (TESTFR act)")
            data[2] = 0x83
            self.socket.write(data)
            self.frm_main.print_memo("104","-> U (TESTFR con)")
        elif data[2] == 0x83:
            pass
            #h.log("<- U (TESTFR con)")
            #self.u_frame_confirmation = True
            #self.u_frame_con = True
            #self.send_u_frame == False
        else:
            self.frm_main.print_memo("104",'<- unknown U {}'.format(data))
    
    #--- S-Frame handle  ------------------------------------------------------
    def handle_sFrame(self, frame):
        self.frm_main.print_memo("104","<- S (Rx con) Rx = " + str((frame[4] | frame[5]<<8)>>1))

    #--- I-Frame handle  ------------------------------------------------------
    def handle_iFrame(self, frame):
        APDU = T104.APDU(frame)
        self.frm_main.print_memo("104","<- I - IOA[{}-{}-{}] - TI[{}]".format(APDU.ASDU.InfoObject.address._1,
                                                 APDU.ASDU.InfoObject.address._2,
                                                 APDU.ASDU.InfoObject.address._3,
                                                APDU.ASDU.TI.Typ))
        self.frm_main.print_memo("",APDU.ASDU.InfoObject.info_object_data_String())
        APDU.pO()
            
        #confirm activation
        if APDU.ASDU.COT.short == "act":
            data = bytearray(frame)
            data[2] = (self.tx_counter & 0b0000000001111111) << 1
            data[3] = (self.tx_counter & 0b0111111110000000) >> 7
            data[4] = (self.rx_counter & 0b0000000001111111) << 1
            data[5] = (self.rx_counter & 0b0111111110000000) >> 7
            data[8] = APDU.ASDU.Test<<8 | APDU.ASDU.PN<<7 | 7 
            self.socket.write(data)
            self.frm_main.print_memo("104","-> I ({}/{}) - COT = {}".format(self.tx_counter, self.rx_counter,
                                                    d.cot[7]["long"]))
            self.tx_counter += 1
            
        #callback to main
        # termination frame
        data[8] = APDU.ASDU.Test<<8 | APDU.ASDU.PN<<7 | 10
        if APDU.ASDU.TI.Typ == 100:     #C_IC_NA_1 - (General-) Interrogation command
            self.gi_callback()
            self.send_frame(data)
        else:
            self.iframe_callback(APDU)
            self.send_frame(data)

    #--- send I-Frame  --------------------------------------------------------
    def send_iFrame(self, length, ti, cot, ioa, info_object_data_value):
        frame = [0x68, length, 0x00, 0x00, 0x00, 0x00,
                ti, 
                0x01, 
                cot, 
                0x00, 
                0x64, 0x01, 
                ioa[2], ioa[1], ioa[0]]
        value = [b for b in struct.pack('f', info_object_data_value)]
        frame += value + [0x00]
        data = bytearray(frame)
        data[2] = (self.tx_counter & 0b0000000001111111) << 1
        data[3] = (self.tx_counter & 0b0111111110000000) >> 7
        data[4] = (self.rx_counter & 0b0000000001111111) << 1
        data[5] = (self.rx_counter & 0b0111111110000000) >> 7
            
        APDU = T104.APDU(data)
        APDU.pO()
        self.frm_main.print_memo("104","-> I - IOA[{}-{}-{}] - TI[{}]".format(self.tx_counter, self.rx_counter,
                                                           APDU.ASDU.InfoObject.address._1,
                                                           APDU.ASDU.InfoObject.address._2,
                                                           APDU.ASDU.InfoObject.address._3,
                                                           APDU.ASDU.TI.Typ))
        self.send_frame(data) 

    def send_frame(self, data):
        self.socket.write(data)
        self.tx_counter += 1

    
    #--- send callback from main  ---------------------------------------------
    # def callback_send(self, cmc_is_on):
    #     if cmc_is_on: 
    #         value = 0b00000001
    #     else: value = 0b00000000
    #     self.send_iFrame(14,1,value)

class Server(QtCore.QObject):
    def __init__(self, frm_main, gi_callback, iframe_callback):
        QtCore.QObject.__init__(self)
        self.frm_main = frm_main
        self.gi_callback = gi_callback
        self.iframe_callback  = iframe_callback
        self.running_server = None
        self.client_connection = None

    def on_newConnection(self):
        while self.running_server.hasPendingConnections():
            self.frm_main.print_memo("s","Incoming Connection...")
            self.client_connection = Client_Connection(self.gi_callback, self.iframe_callback)
            self.client_connection.SetSocket(self.running_server.nextPendingConnection(), self.frm_main)

    def StartServer(self):
        self.TCP_LISTEN_TO_PORT = int(self.frm_main.tb_server_port.toPlainText())
        self.running_server = QtNetwork.QTcpServer()
        self.running_server.newConnection.connect(self.on_newConnection)
        self.running_server.serverPort = self.TCP_LISTEN_TO_PORT
        self.ip = QtNetwork.QHostAddress()
        self.ip.setAddress(self.frm_main.tb_server_ip.toPlainText())
        if self.running_server.listen(self.ip, self.TCP_LISTEN_TO_PORT):   #QtNetwork.QHostAddress.Any
            self.frm_main.print_memo("s",
                "Server is listening on {}:{}".format(self.ip.toString(),
                                                      self.TCP_LISTEN_TO_PORT))
        else:
            self.frm_main.print_memo("e","Server couldn't wake up")
            self.running_server = None
            
    def StopServer(self):
        self.frm_main.print_memo("s","Closing Server")
        self.running_server.close()
        self.running_server = None
    
  
