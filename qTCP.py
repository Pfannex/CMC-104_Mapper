import sys
from PySide6 import QtCore, QtGui, QtNetwork 
from Qt_GUI.frm_main import Ui_frm_main
from PySide6.QtWidgets import QApplication, QMainWindow
"""
class Messenger(object):
    def __init__(self):
        super(Messenger, self).__init__()
        self.TCP_HOST = "127.0.0.1"  # QtNetwork.QHostAddress.LocalHost
        self.TCP_SEND_TO_PORT = 2404
        self.pSocket = None
        self.listenServer = None
        self.pSocket = QtNetwork.QTcpSocket()
        self.pSocket.readyRead.connect(self.slotReadData)
        self.pSocket.connected.connect(self.on_connected)
        self.pSocket.error.connect(self.on_error)

    def slotSendMessage(self):
        self.pSocket.connectToHost(self.TCP_HOST, self.TCP_SEND_TO_PORT)

    def on_error(self, error):
        if error == QtNetwork.QAbstractSocket.ConnectionRefusedError:
            print(
                'Unable to send data to port: "{}"'.format(
                    self.TCP_SEND_TO_PORT
                )
            )
            print("trying to reconnect")
            QtCore.QTimer.singleShot(1000, self.slotSendMessage)

    def on_connected(self):
        cmd = "Hi there!"
        print("Command Sent:", cmd)
        #ucmd = unicode(cmd, "utf-8")
        self.pSocket.write(cmd)
        self.pSocket.flush()
        self.pSocket.disconnectFromHost()

    def slotReadData(self):
        print("Reading data:", self.pSocket.readAll())
        # QByteArray data = pSocket->readAll();

"""
class Client(QtCore.QObject):
    def SetSocket(self, socket):
        self.rx_counter = 0
        self.tx_counter = 0
        self.socket = socket
        self.socket.connected.connect(self.on_connected)
        self.socket.disconnected.connect(self.on_disconnected)
        self.socket.readyRead.connect(self.on_readyRead)
        print(
            "Client Connected from IP %s" % self.socket.peerAddress().toString()
        )

    def on_connected(self):
        print("Client Connected Event")

    def on_disconnected(self):
        print("Client Disconnected")

    def on_readyRead(self):
        msg = self.socket.readAll()
        #print(type(msg), msg.count())
        #print("Client Message:", msg)
        data = bytearray(msg)
        if data[0] == 0x68:  #start
            if data[1] == len(data)-2:
                #S-Frame
                if data[2] & 0b00000011 == 0b01:    #01 S-Frame
                    print("S-Frame")
                    self.handle_sFrame(data)
                #U-Frame
                if data[2] & 0b00000011 == 0b11:    #11 U-Frame
                    print("U-Frame")
                    self.handle_uFrame(data)
                #I-Frame        
                if data[2] & 0b00000001 == 0b0:     #.0 I-Frame 
                    print("I-Frame")
                    self.rx_counter += 1
                    self.handle_iFrame(data)
            else:
                print("Wrong size of incomming IEC 60870-5-104 Frame")
        
    #--- U-Frame handle  ------------------------------------------------------
    def handle_uFrame(self, data):
        if data[2] == 0x07:                              
            print("<- U (STARTDT act)")
            data[2] = 0x0B
            self.socket.write(data)
            print("-> U (STARTDT con)")
        elif data[2] == 0x13:                              
            print("<- U (STOPDT act)")
            data[2] = 0x23
            self.socket.write(data)
            print("-> U (STOPDT con)")
        elif data[2] == 0x43:                              
            print("<- U (TESTFR act)")
            data[2] = 0x83
            self.socket.write(data)
            print("-> U (TESTFR con)")
        elif data[2] == 0x83:
            pass
            #h.log("<- U (TESTFR con)")
            #self.u_frame_confirmation = True
            #self.u_frame_con = True
            #self.send_u_frame == False
        else:
            print('<- unknown U {}'.format(data))

    #--- S-Frame handle  ------------------------------------------------------
    def handle_sFrame(self, data):
        print("<- S (Rx con) Rx = " + str((data[4] | data[5]<<8)>>1))

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
        print("-> I ({}/{}) - COT = ".format(self.tx_counter, self.rx_counter))
        self.tx_counter += 1


class Server(QtCore.QObject):
    def __init__(self, parent=None):
        QtCore.QObject.__init__(self)
        self.TCP_LISTEN_TO_PORT = 2404
        self.server = QtNetwork.QTcpServer()
        self.server.newConnection.connect(self.on_newConnection)

    def on_newConnection(self):
        while self.server.hasPendingConnections():
            print("Incoming Connection...")
            self.client = Client(self)
            self.client.SetSocket(self.server.nextPendingConnection())

    def StartServer(self):
        if self.server.listen(
            QtNetwork.QHostAddress.Any, self.TCP_LISTEN_TO_PORT
        ):
            print(
                "Server is listening on port: {}".format(
                    self.TCP_LISTEN_TO_PORT
                )
            )
        else:
            print("Server couldn't wake up")




class Example(QMainWindow, Ui_frm_main):
    def __init__(self):
        super(Example, self).__init__()
        #self.setWindowTitle("TCP/Server")
        #self.resize(300, 300)
        self.setupUi(self)
        self.bu_firstButton.clicked.connect(self.setup)

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

def main():
    app = QApplication()
    #app = QtGui.QApplication(sys.argv)
    ex = Example()
    ex.show()
    app.exec()
    sys.exit(app.exec_())


if __name__ == "__main__":
    main()