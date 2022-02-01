import IEC60870_5_104
from PySide6 import QtCore, QtGui, QtNetwork
from Qt_GUI.frm_main import Ui_frm_main
from PySide6.QtWidgets import QApplication, QMainWindow
import helper as h

class Frm_main(QMainWindow, Ui_frm_main):
    def __init__(self):
        super().__init__()
        self.setupUi(self)
        self.bu_firstButton.clicked.connect(self.start_server)
    def start_server(self):
        #self.port = int(self.tb_server_port.toPlainText())
        #self.ip = self.tb_server_ip.toPlainText()
        self.server = IEC60870_5_104.Server(self)
        self.server.StartServer()            
     
    def print_memo(self, source, line):
        self.mf_RxLog.append(h.ts(source) + line)
 
 