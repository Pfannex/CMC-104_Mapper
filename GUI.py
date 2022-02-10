###############################################################################
#   IMPORT
###############################################################################
from operator import xor
from PySide6 import QtCore, QtGui, QtNetwork, QtWidgets
from PySide6.QtGui import QRegularExpressionValidator
from Qt_GUI.frm_main import Ui_frm_main
from PySide6.QtWidgets import QApplication, QMainWindow, QTableWidget, \
                              QTableWidgetItem, QCheckBox, QLineEdit
import helper as h
import CMC_Control, SCD, Config
import IEC60870_5_104
import time
from PySide6.QtCore import Qt, QStringConverter, QRegularExpression, Signal

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
        self.cfg = Config.CFG()
        self.scd = SCD.SCD(self)
        
    #Buttons
        self.bu_start_server.clicked.connect(self.server.StartServer)
        self.bu_scan_devices.clicked.connect(self.cmc.scan_for_new)
        self.bu_lock_device.clicked.connect(self.cmc.lock_device)
        self.bu_lock_device.setEnabled(False)
        self.bu_cmc_on.clicked.connect(self.cmc.cmc_power)
        self.bu_cmd_reset_to_default.clicked.connect(self.cmc.cmc_set_to_default)
        self.bu_cmc_on.setStyleSheet("background-color: green")
        self.bu_cmc_on.setCheckable(True)
        self.bu_import_scd.clicked.connect(self.scd.load_file)
        self.dial_ua.valueChanged.connect(self.cmc.set_triple_voltage_amp)
        self.dial_up.valueChanged.connect(self.cmc.set_triple_voltage_phase)
        self.dial_ia.valueChanged.connect(self.cmc.set_triple_current_amp)
        self.dial_ip.valueChanged.connect(self.cmc.set_triple_current_phase)
    #CheckBoxes
        self.cb_autostartServer.setChecked(self.cfg.autostartServer)
        self.cb_autoScan.setChecked(self.cfg.autoScanDevices)
        self.cb_autoLock.setChecked(self.cfg.autoLockDevices)
        
        self.cb_autoScan.stateChanged.connect(self.handle_checkboxes_autostart)
        self.cb_autoLock.stateChanged.connect(self.handle_checkboxes_autostart)
       
    #Table devices
        cmc_dev = self.tab_devices
        cmc_dev.setEditTriggers(QtWidgets.QAbstractItemView.NoEditTriggers)
        cmc_dev.setColumnWidth(0,40)
        cmc_dev.setColumnWidth(1,60)
        cmc_dev.setColumnWidth(2,60)
        cmc_dev.setColumnWidth(3,50)
        cmc_dev.itemClicked.connect(self.handle_item_clicked)
    #Table Quick CMC
        q_cmc = self.tab_qCMC
        q_cmc.setColumnWidth(0,50)
        q_cmc.setColumnWidth(1,50)
        q_cmc.setColumnWidth(2,50)
        for r in range(6):
            for c in range(3):
                edit = CMC_Control.TabEdit(r,c, self.li_qCMC_log)
                edit.exitEdit.connect(self.cmc.on_edit_qCMC_tab)
                self.tab_qCMC.setCellWidget(r,c, edit)

    #autostart services
        self.start_services()
 
    #handle checkboxes autostart
    def handle_checkboxes_autostart(self, cb):
        print(cb)
        if not self.cb_autoScan.isChecked(): self.cb_autoLock.setChecked(False)
        if self.cb_autoLock.isChecked() and not self.cb_autoScan.isChecked():
            self.cb_autoLock.setChecked(False)
        
    #handle Checkboxes in device list
    def handle_item_clicked(self, item):
        if item.column() == 0:
            for i in range(self.tab_devices.rowCount()):
                if item.checkState() == Qt.CheckState.Unchecked:
                    item.setCheckState(Qt.CheckState.Checked)
                    for j in range(4):
                        self.tab_devices.item(i,j).setBackground(QtGui.QColor("lightgrey"))
                else:
                   for j in range(4):
                        self.tab_devices.item(i,j).setBackground(QtGui.QColor("lightgrey"))
                    
                if item.row() != i:
                    self.tab_devices.item(i,0).setCheckState(Qt.CheckState.Unchecked)  
                    for j in range(4):
                        self.tab_devices.item(i,j).setBackground(QtGui.QColor("white"))
        
    def start_services(self):
        if self.cfg.autostartServer: 
            self.server.StartServer()
        if self.cfg.autoScanDevices: 
            self.cmc.scan_for_new()

    def print_memo(self, source, line):
        self.mf_RxLog.append(h.ts(source) + line)

    def closeEvent(self,event):
        self.cfg.autostartServer = self.cb_autostartServer.isChecked()
        self.cfg.autoScanDevices = self.cb_autoScan.isChecked()
        self.cfg.autoLockDevices = self.cb_autoLock.isChecked()
        self.cfg.write_config()
        

