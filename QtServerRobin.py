import time

from PySide6.QtCore import QByteArray
from PySide6.QtNetwork import QTcpServer


class QtServerRobin:

    def __init__(self):
        self._tcp_server = QTcpServer()
        self.start()

    def start(self):
        if not self._tcp_server.listen():
            reason = self._tcp_server.errorString()
            print("Unable to start the server: " + reason)
            self.stop()
            return
        server_address = self._tcp_server.serverAddress()
        port = self._tcp_server.serverPort()
        self._tcp_server.newConnection.connect(self.receive_message())
        print("The server is running on " + str(server_address.toIPv4Address()) + ":" + str(port))

    def stop(self):
        self._tcp_server.close()
        print("TCP server shutdown")

    # on_error()
    # on connection()
    def receive_message(self):
        block = QByteArray("Hello Client :)")
        client_connection = self._tcp_server.nextPendingConnection()
        if client_connection is not None:
            client_connection.disconnected.connect(client_connection.deleteLater)

            client_connection.write(block)
            client_connection.disconnectFromHost()


if __name__ == '__main__':
    tcp_server = QtServerRobin()
    time.sleep(10000)
    tcp_server.stop()
