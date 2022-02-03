###############################################################################
#   IMPORT
###############################################################################
from PySide6 import QtCore, QtGui, QtNetwork
from Qt_GUI.frm_main import Ui_frm_main
from PySide6.QtWidgets import QApplication, QMainWindow
import helper as h
import CMC_Control
import IEC60870_5_104
import time

#pyside6-designer
#cd S:\_Untersuchungen\Datenpunktprüfung\Konfiguration\Mapper\CMC-104_Mapper\Qt_GUI
#pyside6-uic frm_main.ui -o frm_main.py
###############################################################################
#   main window
###############################################################################

class Frm_main(QMainWindow, Ui_frm_main):
    def __init__(self, version):
        super().__init__()
        self.setupUi(self)
        self.setWindowTitle(version)
        self.bu_firstButton.clicked.connect(self.start_server)

    def start_server(self):
        self.server = IEC60870_5_104.Server(self)
        self.server.StartServer()   
        self.cmc = CMC_Control.CMEngine(self)
         
    def print_memo(self, source, line):
        self.mf_RxLog.append(h.ts(source) + line)
 
 