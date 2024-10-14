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
        self.cmc = CMC_Control.CMEngine(self)
        self.server = IEC60870_5_104.Server(self, self.set_general_interrogation_command_from_104, 
                                            self.set_command_from_104)
        self.cfg = Config.CFG()
        self.scd = SCD.SCD(self)
        
    #Buttons
        self.bu_start_server.clicked.connect(self.handle_start_server)
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
        #self.cb_scale_to.stateChanged.connect(xxx)
       
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
                edit.exitEdit.connect(self.on_edit_qCMC)
                self.tab_qCMC.setCellWidget(r,c, edit)

    #scale
        self.cb_scale_to.setChecked(self.cfg.scaleTo)
        self.tb_ct_pri.setText(self.cfg.ct_pri)
        self.tb_ct_pri.editingFinished.connect(self.cmc.format_ct_pri)
        self.tb_ct_sec.setText(self.cfg.ct_sec)
        self.tb_ct_sec.editingFinished.connect(self.cmc.format_ct_sec)
        self.tb_vt_pri.setText(self.cfg.vt_pri)
        self.tb_vt_pri.editingFinished.connect(self.cmc.format_vt_pri)
        self.tb_vt_sec.setText(self.cfg.vt_sec)
        self.tb_vt_sec.editingFinished.connect(self.cmc.format_vt_sec)
        self.tb_ct_range.setText(self.cfg.ct_range)
        self.tb_ct_range.editingFinished.connect(self.cmc.format_ct_range)
        self.tb_vt_range.setText(self.cfg.vt_range)
        self.tb_vt_range.editingFinished.connect(self.cmc.format_vt_range)
    
    #autostart services
        self.start_services()

    def on_edit_qCMC(self, item):
        ioa = [item.c + 1, item.r + 1, 0]
        if self.server.client_connection:
            self.server.client_connection.send_iFrame(18, 13, 3, ioa, item.value)
        self.cmc.on_edit_qCMC_tab(item)

    #----<set quickCMC tableView from 104>-------------------------------------
    def set_quick_table(self, info_object):
        value = info_object.dataObject[0].detail[0].value
        gen = info_object.address._1
        r = info_object.address._2 -1
        c = info_object.address._3 -1
        self.tab_qCMC.cellWidget(r, c).setFormatedText(value, gen)

    def handle_start_server(self):
        if self.server.running_server:
            self.server.StopServer()
            self.bu_start_server.setText("start Server")
            self.tb_server_ip.setEnabled(True)
            self.tb_server_port.setEnabled(True)
        else:
            self.server.StartServer()
            if self.server.running_server:
                self.bu_start_server.setText("stop Server")
                self.tb_server_ip.setEnabled(False)
                self.tb_server_port.setEnabled(False)
        
 
    #handle checkboxes autostart
    def handle_checkboxes_autostart(self, cb):
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
        
        self.cfg.scaleTo = self.cb_scale_to.isChecked()
        self.cfg.ct_pri = self.tb_ct_pri.text()
        self.cfg.ct_sec = self.tb_ct_sec.text()
        self.cfg.vt_pri = self.tb_vt_pri.text()
        self.cfg.vt_sec = self.tb_vt_sec.text()
        self.cfg.ct_range = self.tb_ct_range.text()
        self.cfg.vt_range = self.tb_vt_range.text()
        
        
        self.cfg.write_config()

    #----<GI command from IEC60870-5-104 Frame>------------------------
    def set_general_interrogation_command_from_104(self):
        for r in range(6):
                for c in range(3):
                    item = self.tab_qCMC.cellWidget(r, c)
                    ioa = [item.c + 1, item.r + 1, 0]
                    self.server.client_connection.send_iFrame(18, 13, 20, ioa, item.value)
        
        # CMC Status
        ioa = [2, 0, 255]
        self.server.client_connection.send_iFrame(14, 1, 20, ioa, self.cmc.is_on)

    #----<set command from IEC60870-5-104 Frame by IOA>------------------------
    def set_command_from_104(self, APDU):
        #IOA1           | IOA2       | IOA3     | value     | description
        #out analog
        # gen [1..20]   | tab_row    | tab_col  |
        # 1             | U/I 1,2,3  | a/p/f    | R32       | 3xU / 3xI
        # 1             | 100        | 0        | R32       | triple U in %
        # 1             | 101        | 0        | R32       | triple I in %
        # 1             | 102        | 0        | R32       | triple U/I in %

        #special funktions:
        # 255           | 0          | 1        | SCS_ON/OFF| 255Power on/off
        # 255           | 0          | 2        | res_out   | reset triple

        if APDU.ASDU.CASDU.DEZ != 356:
            return
        
        info_object = APDU.ASDU.InfoObject
        ioa_1 = info_object.address._1
        ioa_2 = info_object.address._2
        ioa_3 = info_object.address._3
        dez = info_object.address.DEZ
        info_detail_typ = info_object.dataObject[0].name  #SCO / R32

        #out ana
        if ioa_1 in range(1, 21) and info_detail_typ == "R32":   
            if ioa_2 < 100:
                self.set_quick_table(info_object)
            else:
                if ioa_2 in range(100,103):
                    value = info_object.dataObject[0].detail[0].value
                    self.cmc.set_triple(ioa_2, value)
        
        #special
        if ioa_1 == 255 and ioa_2 == 0:                          
            if ioa_3 == 1:
                if info_detail_typ == "SCO":
                    status = info_object.dataObject[0].detail[2].state
                    if status == "SCS_ON": 
                        self.cmc.cmc_power(True)
                    else: 
                        self.cmc.cmc_power(False)
                    ioa = [2, 0, 255]
                    self.server.client_connection.send_iFrame(14, 1, 3, ioa, self.cmc.is_on)
                    
            elif ioa_3 == 2:
                self.cmc.cmc_set_to_default()


