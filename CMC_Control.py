###############################################################################
#   CMEngine control
###############################################################################
###############################################################################
#   IMPORT
###############################################################################
import helper as h
import Config
import win32com.client
import math
from PySide6 import QtWidgets, QtCore, QtGui
from PySide6.QtCore import Qt, Signal
from PySide6.QtWidgets import QMessageBox, QLineEdit

###############################################################################
#   class CMEngine
###############################################################################
class CMEngine():
    def __init__(self,frm_main):   
        self.frm_main = frm_main
        self.device_tab = self.frm_main.tab_devices
        self.device_log = self.frm_main.li_device_log
        self.qCMC_tab = self.frm_main.tab_qCMC
        self.qCMC_log = self.frm_main.li_qCMC_log
        self.device_locked = False
        self.is_on = False
        self.serial = ""
        self.typ = ""
        self.device_ip = ""
        self.device_id = 0
        self.cm_engine = win32com.client.Dispatch("OMICRON.CMEngAL")
         
    #----<scan for new CMC-devices>--------------------------------------------
    def scan_for_new(self):
        self.unlock_all_devices()
        self.devlog("scanning....")

        self.cm_engine.DevScanForNew(False)
        ret = self.cm_engine.DevGetList(0)  #return all associated CMCs
        ###ret = "2,DE349J,1,3;1,JA254S,0,0;"  #return all associated CMCs
        ret = ret.split(";")
        while '' in ret: ret.remove('')
        self.device_list = []
        for device in ret: self.device_list.append(device.split(","))   
        
        if not len(self.device_list):
            self.devlog("no devives found!")
            return
        else:
            self.frm_main.bu_lock_device.setEnabled(True)
            self.devlog("devices found:")
            for device in self.device_list:
                self.devlog("  {}".format(device))  

            tab = self.frm_main.tab_devices
            self.device_tab.setRowCount(0)
            for device in self.device_list:
                self.device_tab.insertRow(self.device_tab.rowCount()) 
                item = QtWidgets.QTableWidgetItem(device[0])
                item.setFlags(Qt.ItemFlag.ItemIsUserCheckable | Qt.ItemFlag.ItemIsEnabled)
                item.setCheckState(Qt.CheckState.Unchecked)
                self.device_tab.setItem(self.device_tab.rowCount()-1, 0, item)
                item = QtWidgets.QTableWidgetItem(device[1])
                self.device_tab.setItem(self.device_tab.rowCount()-1, 1, item)
                item = QtWidgets.QTableWidgetItem(self.cm_engine.DeviceType(device[0])) 
                ###item = QtWidgets.QTableWidgetItem("CMC356") 
                self.device_tab.setItem(self.device_tab.rowCount()-1, 2, item)
                item = QtWidgets.QTableWidgetItem(self.cm_engine.IPAddress(device[0])) 
                ###item = QtWidgets.QTableWidgetItem("192.168.2.203") 
                self.device_tab.setItem(self.device_tab.rowCount()-1, 3, item)
            
            self.device_tab.item(0,0).setCheckState(Qt.CheckState.Checked)
            for j in range(4):
                self.device_tab.item(0,j).setBackground(QtGui.QColor("lightgrey")) 
            
            if self.frm_main.cfg.autoLockDevices: 
                self.lock_device()
                
    #----<unlock all CMC-devices in List>--------------------------------------
    def unlock_all_devices(self):
        self.frm_main.bu_lock_device.setEnabled(False)
        self.frm_main.bu_lock_device.setText("Lock Device")
        self.frm_main.bu_lock_device.setStyleSheet("font-weight: normal; color: black")
        self.device_locked = False
        id = 0
        for i in range(self.device_tab.rowCount()):
            id = self.device_tab.item(i,0).text()
            self.devlog("unlock deviceID= {}".format(id))
            self.cm_engine.DevUnlock(id)

    #----<lock selected CMC-device from list>----------------------------------
    def lock_device(self):
        self.unlock_all_devices() 
        for i in range(self.device_tab.rowCount()):
            if self.device_tab.item(i, 0).checkState() == QtCore.Qt.Checked:
                self.device_id = int(self.device_tab.item(i, 0).text())
                self.serial = self.cm_engine.SerialNumber(self.device_id)
                self.typ = self.cm_engine.DeviceType(self.device_id)
                self.device_ip = self.cm_engine.IPAddress(self.device_id)
                ###self.device_id = "1"
                ###self.serial = "PBY123"
                ###self.typ = "CMC356"
                ###self.device_ip = "192.168.2.333"
        
        if not self.device_id: 
            self.devlog("No CMC-Device found or selected!")
        else: 
            self.cm_engine.DevLock(self.device_id)
            self.device_locked = True
            self.frm_main.bu_lock_device.setText("locked to: {}".format(self.serial))
            self.frm_main.bu_lock_device.setStyleSheet("font-weight: bold; color: red")
            self.devlog("Mapper locked to: {} - {}".format(self.serial,self.device_ip))
            self.cmc_set_to_default()

###############################################################################
#   CMC output contol
###############################################################################
    #----<CMC-Device Power contol>---------------------------------------------
    def cmc_power(self, power):
        #HINT: if cmc_power is called by PushButton event "power" represents 
        #      PushButton State!

        button = self.frm_main.bu_cmc_on
        if power:
            if self.set_exec("out:on"):
                self.is_on = True
                self.execlog("CMC Power --> ON")
                button.setStyleSheet("background-color: red")
                button.setChecked(True)
            else: 
                self.execlog("CMC Power ON failed!")
                button.setChecked(False)
                self.is_on = False

        else:  
            self.is_on = False
            if self.set_exec("out:off"):
                self.set_exec("out:ana:off(zcross)")
                self.execlog("CMC Power --> OFF")
                button.setStyleSheet("background-color: green")
                button.setChecked(False)
            else: 
                self.execlog("CMC Power OFF failed!")
                button.setChecked(False)
                self.is_on = False

    #----<set cmEngine exec-command>-------------------------------------------
    def set_exec(self, cmd):
        if self.device_locked:
            self.execlog("Exec: {}".format(cmd))
            self.cm_engine.Exec(self.device_id, cmd)
            if self.is_on:
                self.cm_engine.Exec(self.device_id, "out:on")
            return True
        else:
            self.execlog("No CMC-Device locked!")
            self.execlog("Tried to Exec: {}".format(cmd))
            return False
            
        #"out:v(1:1):a(10);p(0);f(50)"               
        
    #----<set all values do default>-------------------------------------------
    def cmc_set_to_default(self):
        for r in range(6):
            for c in range(3):
                self.qCMC_tab.cellWidget(r, c).set_to_default(1)
            
    #----<set value by name>---------------------------------------------------
    def set_value(self, r,c, value):
        self.qCMC_tab.cellWidget(r, c).setFormatedText(value,1)

    #----<set triple in percent>-----------------------------------------------
    def set_triple(self, ioa_2, value):
        val_u = value * 100 / math.sqrt(3)
        val_i = value * 100 
        if ioa_2 == 100:
            self.set_triple_voltage_amp(val_u)
        if ioa_2 == 101:
            self.set_triple_current_amp(val_i)
        if ioa_2 == 102:
            self.set_triple_voltage_amp(val_u)
            self.set_triple_current_amp(val_i)

    #----<set quickCMC tableView by edeting>-----------------------------------
    def on_edit_qCMC_tab(self, item):
        if item.cmdStr != "":
           self.set_exec(item.cmdStr)
        else:
            self.execlog("Commandstring Mailformed!")

    #----<set dial value>---------------------------------------------------
    def set_triple_voltage_amp(self, value):
        if self.frm_main.cb_scale_to.isChecked():
            scale = 100*float(self.frm_main.tb_vt_range.text())
        else: scale = 100.0
        out = scale * (value/100)
        self.qCMC_tab.cellWidget(0, 0).setFormatedText(out, 1)        
        self.qCMC_tab.cellWidget(1, 0).setFormatedText(out, 1)        
        self.qCMC_tab.cellWidget(2, 0).setFormatedText(out, 1)  
        #scalet outputinfo
        max = 0x7FFF
        scaled = max * value/100 
        self.frm_main.tb_vt_scale_hex.setText("{:02X}".format(int(scaled)))      
        self.frm_main.tb_vt_scale_int.setText("{:.0f}".format(scaled)) 
        self.frm_main.lbl_u_dial.setText("{:.0f}%".format(value)) 
            
    def set_triple_voltage_phase(self, value):
        out = 360.0 * (value/100)
        self.qCMC_tab.cellWidget(0, 1).setFormatedText(out, 1)        
        self.qCMC_tab.cellWidget(1, 1).setFormatedText(out-120, 1)        
        self.qCMC_tab.cellWidget(2, 1).setFormatedText(out+120, 1)   
             
    def set_triple_current_amp(self, value):
        if self.frm_main.cb_scale_to.isChecked():
            scale = 1.0*float(self.frm_main.tb_ct_range.text())
        else: scale = 1
        out = scale * (value/100)
        self.qCMC_tab.cellWidget(3, 0).setFormatedText(out, 1)        
        self.qCMC_tab.cellWidget(4, 0).setFormatedText(out, 1)        
        self.qCMC_tab.cellWidget(5, 0).setFormatedText(out, 1)        
        #scalet outputinfo
        max = 0x7FFF
        scaled = max * value/100 
        self.frm_main.tb_ct_scale_hex.setText("{:02X}".format(int(scaled)))      
        self.frm_main.tb_ct_scale_int.setText("{:.0f}".format(scaled))  
        self.frm_main.lbl_i_dial.setText("{:.0f}%".format(value)) 
        
    def set_triple_current_phase(self, value):
        out = 360.0 * (value/100)
        self.qCMC_tab.cellWidget(3, 1).setFormatedText(out, 1)        
        self.qCMC_tab.cellWidget(4, 1).setFormatedText(out-120, 1)        
        self.qCMC_tab.cellWidget(5, 1).setFormatedText(out+120, 1)        

    #----<format input>--------------------------------------------------------
    def format_ct_pri(self):
        self.format_input(self.frm_main.tb_ct_pri)
    def format_ct_sec(self):
        self.format_input(self.frm_main.tb_ct_sec)
    def format_vt_pri(self):
        self.format_input(self.frm_main.tb_vt_pri)
    def format_vt_sec(self):
        self.format_input(self.frm_main.tb_vt_sec)
    def format_ct_range(self):
        self.format_input(self.frm_main.tb_ct_range)
    def format_vt_range(self):
        self.format_input(self.frm_main.tb_vt_range)
        
    def format_input(self, tb):
        txt = tb.text()
        txt = txt.replace(",",".")
        for chr in txt:
            if not chr in "-01234567890,.":
                txt = txt.replace(chr,"")
        if not txt:        
            self.setText("")
        else:
            tb.setText(txt)


    #----<logging>-------------------------------------------------------------
    def devlog(self, msg):
        self.device_log.addItem(QtWidgets.QListWidgetItem(msg))
        self.device_log.scrollToBottom()
    def execlog(self,msg):
        self.qCMC_log.addItem(QtWidgets.QListWidgetItem(msg))
        self.qCMC_log.scrollToBottom()

###############################################################################
#   GUI lineEdit
###############################################################################
class TabEdit(QLineEdit):
    exitEdit = Signal(QLineEdit)
    def __init__(self, r,c, log, parent=None):
        # Initialize the editor object
            super(TabEdit, self).__init__(parent)
            self.qCMC_log = log
            self.u_max = 150.0
            self.i_max = 5.0
            self.f_min = 40.0
            self.f_max = 70.0
            
            self.r = r
            self.c = c
            self.gen = 0
            
            self.unit = ""
            self.phase = ""
            self.vi = ""
            self.phase = ""
            self.kind = ""
            self.value = ""
            self.cmdStr = "out:off"
            self.editingFinished.connect(self._exitEdit)
            self.setAlignment(Qt.AlignVCenter | Qt.AlignRight) 
            self.setStyleSheet("border-width: 0px; border-style: solid;")
            self.set_to_default(1)
            self.build_cmd()
        
    #----<set cell values to default>------------------------------------------
    def set_to_default(self, gen):
        self.gen = gen
        if self.r in range(0,3):
            self.unit = "V"
            self.vi = "v"
            self.phase = self.r+1
            self.value = 0.0
            self.kind = "a"
        if self.r in range(3,6):
            self.unit = "A"
            self.vi = "i"
            self.phase = self.r-3+1
            self.value = 0.0
            self.kind = "a"
            
        if self.c == 1: 
            self.unit = "°"
            self.kind = "p"
            if self.r == 0 or self.r == 3:
                self.value = 0.0 
            elif self.r == 1 or self.r == 4:
                self.value = -120.0 
            elif self.r == 2 or self.r == 5:
                self.value = 120.0 
        elif self.c == 2:
            self.unit = "Hz"
            self.kind = "f"
            self.value = 50.0 
        
        txt = "{:.2f} {}".format(self.value, self.unit)
        self.setText(txt)
        self.exitEdit.emit(self)
    
    #----<build cmc-line for cmEngine exec>------------------------------------
    def build_cmd(self):
        self.cmdStr = "out:{}({}:{}):{}({:.3f})".format(self.vi, self.gen, 
                                                        self.phase, self.kind, 
                                                        self.value)
        return self.cmdStr

    #----<cleanUp Cell input>--------------------------------------------------
    def setFormatedText(self, txt_call, gen):
        self.gen = gen
        txt = ""
        txt = self.text() if str(txt_call) == "" else str(txt_call)

        txt = txt.replace(",",".")
        for chr in txt:
            if not chr in "-01234567890,.":
                txt = txt.replace(chr,"")
        if not txt:        
            self.setText("")
        else:
            self.value = float(txt)
            if self.unit == "V" and self.value > self.u_max:
                self.value = self.u_max
                self.execlog("U > Umax! U set to: {} V".format(self.u_max))
            if self.unit == "I" and self.value > self.i_max:
                self.value = self.i_max
                self.execlog("I > Umax! I set to: {} A".format(self.i_max))
            if self.unit == "Hz" and self.value > self.f_max:
                self.value = self.f_max
                self.execlog("f > fmax! f set to: {} Hz".format(self.f_max))
            if self.unit == "Hz" and self.value < self.f_min:
                self.value = self.f_min
                self.execlog("f < fmin! f set to: {} Hz".format(self.f_min))
            
            self.setText("{:.2f} {}".format(self.value, self.unit))
            self.build_cmd()
        self.exitEdit.emit(self)

    #----<even trigered by editFinished>---------------------------------------
    def _exitEdit(self):
        self.setFormatedText("","1")
        
    #----<logging>-------------------------------------------------------------
    def execlog(self,msg):
        self.qCMC_log.addItem(QtWidgets.QListWidgetItem(msg))
        self.qCMC_log.scrollToBottom()
