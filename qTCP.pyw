from PySide6 import QtCore, QtGui, QtNetwork
from Qt_GUI.frm_main import Ui_frm_main
from PySide6.QtWidgets import QApplication, QMainWindow
import sys

class Client(QtCore.QObject):
    def SetSocket(self, socket):
        self.rx_counter = 0
        self.tx_counter = 0
        self.socket = socket
        self.socket.connected.connect(self.on_connected)
        self.socket.disconnected.connect(self.on_disconnected)
        self.socket.readyRead.connect(self.on_readyRead)
        frm_main.print_memo("Client Connected from {}:{}".format(self.socket.peerAddress().toString(),
                                                                 self.socket.peerPort()))
        frm_main.tb_client_ip.setPlainText(self.socket.peerAddress().toString())
        frm_main.tb_client_port.setPlainText(str(self.socket.peerPort()))
        
    def on_connected(self):
        frm_main.print_memo("Client Connected Event")

    def on_disconnected(self):
        frm_main.print_memo("Client Disconnected")
        

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
                frm_main.print_memo("Wrong size of incomming IEC 60870-5-104 Frame")
        
    #--- U-Frame handle  ------------------------------------------------------
    def handle_uFrame(self, data):
        if data[2] == 0x07:                              
            frm_main.print_memo("<- U (STARTDT act)")
            data[2] = 0x0B
            self.socket.write(data)
            frm_main.print_memo("-> U (STARTDT con)")
        elif data[2] == 0x13:                              
            frm_main.print_memo("<- U (STOPDT act)")
            data[2] = 0x23
            self.socket.write(data)
            frm_main.print_memo("-> U (STOPDT con)")
        elif data[2] == 0x43:                              
            frm_main.print_memo("<- U (TESTFR act)")
            data[2] = 0x83
            self.socket.write(data)
            frm_main.print_memo("-> U (TESTFR con)")
        elif data[2] == 0x83:
            pass
            #h.log("<- U (TESTFR con)")
            #self.u_frame_confirmation = True
            #self.u_frame_con = True
            #self.send_u_frame == False
        else:
            frm_main.print_memo('<- unknown U {}'.format(data))

    #--- S-Frame handle  ------------------------------------------------------
    def handle_sFrame(self, data):
        frm_main.print_memo("<- S (Rx con) Rx = " + str((data[4] | data[5]<<8)>>1))

    #--- I-Frame handle  ------------------------------------------------------
    def handle_iFrame(self, data):
        #confirm activation frame
        #if APDU.ASDU.COT.short == "act":
        data[2] = (self.tx_counter & 0b0000000001111111) << 1
        data[3] = (self.tx_counter & 0b0111111110000000) >> 7
        data[4] = (self.rx_counter & 0b0000000001111111) << 1
        data[5] = (self.rx_counter & 0b0111111110000000) >> 7
        data[8] = 0<<8 | 0<<7 | 7 
        self.socket.write(data)
        frm_main.print_memo("-> I ({}/{}) - COT = ".format(self.tx_counter, self.rx_counter))
        self.tx_counter += 1


class Server(QtCore.QObject):
    def __init__(self, parent=None):
        QtCore.QObject.__init__(self)
        self.TCP_LISTEN_TO_PORT = int(frm_main.tb_server_port.toPlainText())
        self.server = QtNetwork.QTcpServer()
        self.server.newConnection.connect(self.on_newConnection)
        self.server.serverPort = self.TCP_LISTEN_TO_PORT
        self.ip = QtNetwork.QHostAddress()
        self.ip.setAddress(frm_main.tb_server_ip.toPlainText())

    def on_newConnection(self):
        while self.server.hasPendingConnections():
            frm_main.print_memo("Incoming Connection...")
            self.client = Client(self)
            self.client.SetSocket(self.server.nextPendingConnection())

    def StartServer(self):
        if self.server.listen(self.ip, self.TCP_LISTEN_TO_PORT):   #QtNetwork.QHostAddress.Any
            frm_main.print_memo(
                "Server is listening on {}:{}".format(self.ip.toString(),
                                                      self.TCP_LISTEN_TO_PORT))
        else:
            frm_main.print_memo("Server couldn't wake up")
            
    def StopServer(self):
        frm_main.print_memo("Closing Server")
        self.server.close()

class Frm_main(QMainWindow, Ui_frm_main):
    def __init__(self):
        super().__init__()
        #self.setWindowTitle("TCP/Server")
        #self.resize(300, 300)
        self.setupUi(self)
        self.bu_firstButton.clicked.connect(self.setup)
        #mf_RxLog
        #self.uiConnect = QtGui.QPushButton("Connect")

        # layout
        #self.layout = QtGui.QVBoxLayout()
        #self.layout.addWidget(self.uiConnect)
        #self.widget = QtGui.QWidget()
        #self.widget.setLayout(self.layout)
        #self.setCentralWidget(self.widget)

        # Connections
        #self.uiConnect.clicked.connect(self.setup)

    def setup(self):
        self.server = Server()
        self.server.StartServer()

        #self.tcp = Messenger()
        #self.tcp.slotSendMessage()
    
    def print_memo(self, line):
        self.mf_RxLog.append(line)


app = QApplication()
frm_main = Frm_main()
        
frm_main.show()
app.exec()
