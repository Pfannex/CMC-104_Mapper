import time

from PySide6.QtCore import QDataStream, QByteArray
from PySide6.QtNetwork import QTcpSocket, QAbstractSocket, QHostAddress


class QtClientRobin:
    def __init__(self):
        self._tcp_socket = QTcpSocket()
        self._tcp_socket.connectToHost(QHostAddress("127.0.0.1"), 50092)
        print("Created connection to server")
        self._tcp_socket.write(QByteArray("ok !\n"))
        print("Sent data to server")
        time.sleep(10)
        self._tcp_socket.readyRead.connect(self.read_fortune)
        self._tcp_socket.errorOccurred.connect(self.display_error)

    def read_fortune(self):
        instr = QDataStream(self._tcp_socket)
        instr.setVersion(QDataStream.Qt_4_0)

        if self._tcp_socket.bytesAvailable() < 2:
            return
        else:
            block_size = instr.readUInt16()

        if self._tcp_socket.bytesAvailable() < block_size:
            return

        print("Incoming data stream: " + instr.readString())

    def display_error(self, socketError):
        if socketError == QAbstractSocket.RemoteHostClosedError:
            pass
        elif socketError == QAbstractSocket.HostNotFoundError:
            print("The host was not found. Please check the host name and port settings.")
        elif socketError == QAbstractSocket.ConnectionRefusedError:
            print("The connection was refused by the peer. Make sure the "
                  "fortune server is running, and check that the host name "
                  "and port settings are correct.")
        else:
            reason = self._tcp_socket.errorString()
            print("The following error occurred: " + reason + ".")


if __name__ == '__main__':
    client = QtClientRobin()
    print("Shutdown client")
