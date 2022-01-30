import sys
from PySide6 import QtNetwork, QtCore, QtGui
from PySide6.QtWidgets import QApplication, QMainWindow
from Qt_GUI.frm_main import Ui_frm_main

class Client(QtCore.QObject):
    def __init__(self, parent=None):
        QtCore.QObject.__init__(self)

    def SetSocket(self, Descriptor):
        self.socket = QtNetwork.QTcpSocket(self)
        self.connect(self.socket, QtCore.SIGNAL("connected()"), QtCore.SLOT(self.connected()))
        self.connect(self.socket, QtCore.SIGNAL("disconnected()"), QtCore.SLOT(self.disconnected()))
        self.connect(self.socket, QtCore.SIGNAL("readyRead()"), QtCore.SLOT(self.readyRead()))

        self.socket.setSocketDescriptor(Descriptor)
        print ("Client Connected from IP %s" % self.socket.peerAddress().toString())

    def connected(self):
        print ("Client Connected Event")

    def disconnected(self):
        print ("Client Disconnected")

    def readyRead(self):
        msg = self.socket.readAll()
        print ("--------------------")
        print (msg)
        print ("--------------------")
        #print("start:  {:02X}".format(msg[0]))
        #print("length: {:02X}".format(msg[1]))
        #print (type(msg), msg.count())
        #msgHex = bytearray(msg)
        #print ("Client Message:", msgHex.hex())

class Server(QtCore.QObject):
    def __init__(self, parent=None):
        QtCore.QObject.__init__(self)
        self.TCP_LISTEN_TO_PORT = 2404


    def incomingConnection(self, handle):
        print ("Incoming Connection...")
        self.client = Client(self)
        self.client.SetSocket(handle)

    def StartServer(self):
        self.server = QtNetwork.QTcpServer()
        self.server.incomingConnection = self.incomingConnection
        if self.server.listen(QtNetwork.QHostAddress.Any, self.TCP_LISTEN_TO_PORT):
            print ("Server is listening on port: {}".format(self.TCP_LISTEN_TO_PORT)  )  
        else:
            print ("Server couldn't wake up")


def main():
    app = QApplication()
    server = Server()
    server.StartServer()
    app.exec()
    
    #sys.exit(app.exec_())


if __name__ == '__main__':
    main()