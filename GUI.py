###############################################################################
#   IMPORT
###############################################################################
from PySide6 import QtCore, QtGui, QtNetwork, QtWidgets
from Qt_GUI.frm_main import Ui_frm_main
from PySide6.QtWidgets import QApplication, QMainWindow, QTableWidget, \
                              QTableWidgetItem, QCheckBox
import helper as h
import CMC_Control, SCD
import IEC60870_5_104
import time

#pyside6-designer
#cd S:\_Untersuchungen\Datenpunktprüfung\Konfiguration\Mapper\CMC-104_Mapper\Qt_GUI
#cd H:\Pfanne-NET\HomeControl\Code\Python\104-CMC-Mapper\CMC-104_Mapper\Qt_GUI
#pyside6-uic frm_main.ui -o frm_main.py
###############################################################################
#   main window
###############################################################################

class Frm_main(QMainWindow, Ui_frm_main):
    def __init__(self, version):
        super().__init__()
        self.setupUi(self)
        self.setWindowTitle(version)
        self.cmc = CMC_Control.CMEngine(self)
        self.scd = SCD.SCD(self)
        
        self.bu_firstButton.clicked.connect(self.start_services)
        self.bu_scan_devices.clicked.connect(self.cmc.scan_for_new)
        self.bu_lock_device.clicked.connect(self.cmc.lock_device)
        self.bu_import_scd.clicked.connect(self.scd.load_file)
        
        self.tabw_devices.setEditTriggers(QtWidgets.QAbstractItemView.NoEditTriggers)
        self.tabw_devices.setHorizontalHeaderLabels(["ID","Serial","Typ","IP"])
        self.tabw_devices.setColumnWidth(0,40)
        self.tabw_devices.setColumnWidth(1,60)
        self.tabw_devices.setColumnWidth(2,60)
        self.tabw_devices.setColumnWidth(3,50)
        #self.tabw_devices.item(0,0).text()
        
    def start_services(self):
        self.server = IEC60870_5_104.Server(self)
        self.server.StartServer()   
         
    def print_memo(self, source, line):
        self.mf_RxLog.append(h.ts(source) + line)
    def print_scd(self, line):
        self.mf_scd.append(line)
        

 
 