###############################################################################
#   IMPORT
###############################################################################
from operator import xor
from PySide6 import QtCore, QtGui, QtNetwork, QtWidgets
from Qt_GUI.frm_main import Ui_frm_main
from PySide6.QtWidgets import QApplication, QMainWindow, QTableWidget, \
                              QTableWidgetItem, QCheckBox
import helper as h
import CMC_Control, SCD
import IEC60870_5_104
import time
from PySide6.QtCore import Qt, QStringConverter

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
        self.statusbar.showMessage("© by Pf@nne/22")
        self.server = IEC60870_5_104.Server(self)
        self.cmc = CMC_Control.CMEngine(self)
        self.scd = SCD.SCD(self)
        
        #Buttons
        self.bu_firstButton.clicked.connect(self.start_services)
        self.bu_scan_devices.clicked.connect(self.cmc.scan_for_new)
        self.bu_lock_device.clicked.connect(self.cmc.lock_device)
        self.bu_lock_device.setEnabled(False)
        self.bu_import_scd.clicked.connect(self.scd.load_file)
        #Table CMC-Devices
        cmc_dev = self.tabw_devices
        cmc_dev.setEditTriggers(QtWidgets.QAbstractItemView.NoEditTriggers)
        cmc_dev.setHorizontalHeaderLabels(["ID","Serial","Typ","IP"])
        cmc_dev.setColumnWidth(0,40)
        cmc_dev.setColumnWidth(1,60)
        cmc_dev.setColumnWidth(2,60)
        cmc_dev.setColumnWidth(3,50)
        cmc_dev.itemClicked.connect(self.handle_item_clicked)
        #Table Quick CMC
        q_cmc = self.tabw_quick_cmc
        q_cmc.setHorizontalHeaderLabels(["Amp.", "Phase", "Freq"])
        q_cmc.setVerticalHeaderLabels(["UL1-N", "UL2-N", "UL3-N", "IL1", "IL2", "IL3"])
        q_cmc.setColumnWidth(0,50)
        q_cmc.setColumnWidth(1,50)
        q_cmc.setColumnWidth(2,50)
        for r in range(6):
            for c in range(3):
                x = QtWidgets.QTableWidgetItem(self.cmc.values[r][c])
                x.setTextAlignment(Qt.AlignVCenter | Qt.AlignRight)
                q_cmc.setItem(r,c,x)

    #handle Checkboxes
    def handle_item_clicked(self, item):
        if item.column() == 0:
            for i in range(self.tabw_devices.rowCount()):
                if item.checkState() == Qt.CheckState.Unchecked:
                    item.setCheckState(Qt.CheckState.Checked)
                    for j in range(4):
                        self.tabw_devices.item(i,j).setBackground(QtGui.QColor("lightgrey"))
                else:
                   for j in range(4):
                        self.tabw_devices.item(i,j).setBackground(QtGui.QColor("lightgrey"))
                    
                if item.row() != i:
                    self.tabw_devices.item(i,0).setCheckState(Qt.CheckState.Unchecked)  
                    for j in range(4):
                        self.tabw_devices.item(i,j).setBackground(QtGui.QColor("white"))
                        
                        
        
    def start_services(self):
        self.server.StartServer()   
         
    def print_memo(self, source, line):
        self.mf_RxLog.append(h.ts(source) + line)
    def print_scd(self, line):
        self.mf_scd.append(line)
        

 
 