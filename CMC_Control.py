###############################################################################
#   CMEngine control
###############################################################################
###############################################################################
#   IMPORT
###############################################################################
import helper as h
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

        self.ana = {"v": [[0, 0, 0],      #Amplitude
                         [0, -120, 120],  #Phase
                         [50, 50, 50]],   #Frequency
                    "i": [[0, 0, 0],      #Amplitude
                         [0, -120, 120],  #Phase
                         [50, 50, 50]]    #Frequency
                    }    
        
    def scan_for_new(self):
        self.unlock_all_devices()
        self.devlog("scanning....")

        self.cm_engine.DevScanForNew(False)
        ##ret = self.cm_engine.DevGetList(0)  #return all associated CMCs
        ret = "2,DE349J,1,3;1,JA254S,0,0;"  #return all associated CMCs
        ret = ret.split(";")
        while '' in ret: ret.remove('')
        self.device_list = []
        for device in ret: self.device_list.append(device.split(","))   
        
        if not len(self.device_list):
            self.devlog("no devives found!")
            return
        else:
            self.frm_main.bu_lock_device.setEnabled(True)
            self.devlog("devices found: {}".format(self.device_list))

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
                ##item = QtWidgets.QTableWidgetItem(self.cm_engine.DeviceType(device[0])) 
                item = QtWidgets.QTableWidgetItem("CMC356") 
                self.device_tab.setItem(self.device_tab.rowCount()-1, 2, item)
                ###item = QtWidgets.QTableWidgetItem(self.cm_engine.IPAddress(device[0])) 
                item = QtWidgets.QTableWidgetItem("192.168.2.203") 
                self.device_tab.setItem(self.device_tab.rowCount()-1, 3, item)
            
            self.device_tab.item(0,0).setCheckState(Qt.CheckState.Checked)
            for j in range(4):
                self.device_tab.item(0,j).setBackground(QtGui.QColor("lightgrey")) 
                
    def unlock_all_devices(self):
        self.frm_main.bu_lock_device.setEnabled(False)
        self.frm_main.bu_lock_device.setText("Lock Device")
        self.frm_main.bu_lock_device.setStyleSheet("font-weight: normal; color: black")
        self.device_locked = False
        id = 0
        for i in range(self.device_tab.rowCount()):
            id = self.device_tab.item(i,0).text()
            self.devlog("unlock deviceID= {}".format(id))
            ##self.cm_engine.DevUnlock(id)

    def lock_device(self):
        self.unlock_all_devices() 
        for i in range(self.device_tab.rowCount()):
            if self.device_tab.item(i, 0).checkState() == QtCore.Qt.Checked:
                ##self.device_id = int(self.device_tab.item(i, 0).text())
                ##self.serial = self.cm_engine.SerialNumber(self.device_id)
                ##self.typ = self.cm_engine.DeviceType(self.device_id)
                ##self.device_ip = self.cm_engine.IPAddress(self.device_id)
                self.device_id = "1"
                self.serial = "PBY123"
                self.typ = "CMC356"
                self.device_ip = "192.168.2.333"
        
        if not self.device_id: 
            self.devlog("No CMC-Device found or selected!")
        else: 
            ##self.cm_engine.DevLock(self.device_id)
            self.device_locked = True
            self.frm_main.bu_lock_device.setText("locked to: {} - {}".format(self.serial,self.device_ip))
            self.frm_main.bu_lock_device.setStyleSheet("font-weight: bold; color: red")
            self.devlog("Mapper locked to: {} - {}".format(self.serial,self.device_ip))

    #----<set cmEngine exec-command>-------------------------------------------
    def set_exec(self, cmd):
        ##if self.device_locked:
        if not self.device_locked:
            self.execlog("Exec: {}".format(cmd))
            ##self.cm_engine.Exec(self.device_id, cmd)
            return True
            if self.is_on:
                pass
                ##elf.cm_engine.Exec(self.device_id, "out:on")
        else:
            self.execlog("No CMC-Device locked!")
            return False
            
        #"out:v(1:1):a(10);p(0);f(50)"               
        
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
            else: self.execlog("CMC Power ON failed!")
        else:  
            if self.set_exec("out:off"):
                self.set_exec("out:ana:off(zcross)")
                self.execlog("CMC Power --> OFF")
                self.is_on = False
                button.setStyleSheet("background-color: green")
                button.setChecked(False)
            else: self.execlog("CMC Power OFF failed!")
   
            
    #----<set command from IEC60870-5-104 Frame by IOA>------------------------
    def set_command_from_104(self, info_object):
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

        ioa_1 = info_object.address._1
        ioa_2 = info_object.address._2
        ioa_3 = info_object.address._3
        dez = info_object.address.DEZ
        info_detail_typ = info_object.dataObject[0].name  #SCO / R32

        if ioa_1 in range(1, 21) and info_detail_typ == "R32":   #out ana
            self.set_quick_table(info_object)
        if ioa_1 == 255 and ioa_2 == 0:
            if ioa_3 == 1:
                if info_detail_typ == "SCO":
                    status = info_object.dataObject[0].detail[2].state
                    if status == "SCS_ON": self.cmc_power(True)
                    else: self.cmc_power(False)

    #----<set quickCMC tableView from 104>-------------------------------------
    def set_quick_table(self, info_object):
        value = info_object.dataObject[0].detail[0].value
        gen = info_object.address._1
        r = info_object.address._2 -1
        c = info_object.address._3 -1
        self.qCMC_tab.cellWidget(r, c).setFormatedText(value, gen)

    #----<set quickCMC tableView by edeting>-----------------------------------
    def on_edit_qCMC_tab(self, item):
        if item.cmdStr != "":
           self.set_exec(item.cmdStr)
        else:
            self.execlog("Commandstring Mailformed!")

    #----<logging>-------------------------------------------------------------
    def devlog(self, msg):
        self.device_log.addItem(QtWidgets.QListWidgetItem(msg))
        self.device_log.scrollToBottom()
    def execlog(self,msg):
        self.qCMC_log.addItem(QtWidgets.QListWidgetItem(msg))
        self.qCMC_log.scrollToBottom()

########################################################
    

    #----<set command to CMC-Device>-------------------------------------------
    def cmd(self, cmd):
        #self.frm_main.print_memo("cmc","CMC Command: " + cmd)
        if self.device_locked:
            self.cm_engine.Exec(self.device_id, cmd)
            if self.is_on:
                self.cm_engine.Exec(self.device_id, "out:on")
        else:
            self.frm_main.print_memo("e","No CMC connected!")

    def power(self, command):
        if command == "SCS_ON":
            self.cmd("out:on")
            self.frm_main.print_memo("cmc","CMC --> ON")
            self.is_on = True
        else:  
            self.is_on = False
            self.cmd("out:off")
            self.cmd("out:ana:off(zcross)")
            self.frm_main.print_memo("cmc","CMC --> OFF")

    #----<reset output triples to zero>----------------------------------------
    def reset_output(self):
        max_generators = 1
        
        for _phase in range(0,3):
            for _parameter in range(0,3):
                self.ana["v"][_parameter][_phase] = 0
                self.ana["i"][_parameter][_phase] = 0
        self.ana["v"][1][1] = -120
        self.ana["i"][1][1] = -120
        self.ana["v"][1][2] = 120
        self.ana["i"][1][2] = 120
        for i in range(0,3):
            self.ana["v"][2][i] = 50
            self.ana["i"][2][i] = 50
        for i in range(1,max_generators+1):
            self.set_output(i, "v")
            self.set_output(i, "i")
               
    #----<prepare output triple list>------------------------------------------
    def prepare_output(self, generator, phase, parameter, value):
        u_max = 150
        i_max = 5
        f_min = 40.0
        f_max = 70.0
        
        triple = "v" if phase in range(0,4) else "i"
        ui_phase = phase if triple == "v" else phase - 3
        
        max_value = value
        if triple == "v" and parameter == 1 and value >= u_max:
            max_value = u_max
            self.frm_main.print_memo("e","U > Umax! --> set {}V".format(u_max))
        if triple == "i" and parameter == 1 and value >= i_max:
            max_value = i_max
            self.frm_main.print_memo("e","I > Imax! --> set {}A".format(i_max))
            
        if parameter == 3 and (value < f_min or value > f_max):
            max_value = 50
            self.frm_main.print_memo("e","f <> fmin/max! --> set {}Hz".format(50))
            
        
        self.ana[triple][parameter-1][ui_phase-1] = max_value
        self.set_output(generator, "v")
        self.set_output(generator, "i")

    #----<set output triple to CMC-Device>-------------------------------------
    def set_output(self, generator, vi):
        for phase in range(0,3):
            cmd = "out:{}({}:{}):a({:3.3f});p({:3.3f});f({:3.3f})" \
                                    .format(vi, generator, phase+1, 
                                            self.ana[vi][0][phase],
                                            self.ana[vi][1][phase],
                                            self.ana[vi][2][phase])
            out = "U" if vi == "v" else "I"
            unit = "V" if vi == "v" else "A"
            self.frm_main.print_memo("cmc","{}L{}: {: 6.2f}{} - {: 7.2f}° - {: 6.2f}Hz".format(out,phase+1,self.ana[vi][0][phase],unit,
                                                                                  self.ana[vi][1][phase],
                                                                                  self.ana[vi][2][phase]))
            self.cmd(cmd)
                
        #"out:v(1:1):a(10);p(0);f(50)"               
        """
        self.ana = {"v": [[0, 0, 0],     #Amplitude
                         [0, -120, 120], #Phase
                         [50, 50, 50]],  #Frequency
                    "i": [[0, 0, 0],     #Amplitude
                         [0, -120, 120], #Phase
                         [50, 50, 50]]   #Frequency
                    }    
        """ 

    def triple_out(self, generator, vi, percent):
        if vi == "v":
            value =  100/math.sqrt(3) * percent
        else: value = percent

        self.ana[vi][0][0] = value
        self.ana[vi][0][1] = value
        self.ana[vi][0][2] = value

        self.set_output(generator, vi)


        """
        unit = "V"
        unit = "°" if c == 1 else "Hz"
        if c == 0 and r in range(0,3): unit = "V"
        if c == 0 and r in range(3,6): unit = "A"
        self.values[r][c] = "{:.2f} {}".format(value, unit)
        x = QtWidgets.QTableWidgetItem(self.values[r][c])
        x.setTextAlignment(Qt.AlignVCenter | Qt.AlignRight)
        self.qCMC_tab.setItem(r,c,x)
        if r in range(0,3):
            vi = "v"
            phase = r+1
        if r in range(3,6):
            vi = "i"
            phase = r-3+1
        if c == 0: kind = "a"
        elif c == 1: kind = "p" 
        elif c == 2: kind = "f" 
        self.set_exec("out:{}({}:{}):{}({:.3f})".format(vi, gen, phase, kind, value))

        """

class TabEdit(QLineEdit):
    exitEdit = Signal(QLineEdit)
    def __init__(self, r,c, parent=None):
        # Initialize the editor object
            super(TabEdit, self).__init__(parent)
            self.r = r
            self.c = c
            self.gen = 0
            
            self.unit = ""
            self.phase = ""
            self.vi = ""
            self.phase = ""
            self.kind = ""
            self.value = ""
            self.editingFinished.connect(self._exitEdit)
            self.setAlignment(Qt.AlignVCenter | Qt.AlignRight) 
            self.setStyleSheet("border-width: 0px;")
            self.set_to_default()
            self.build_cmd()

    def set_to_default(self):
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
    
    def build_cmd(self):
        self.cmdStr = "out:{}({}:{}):{}({:.3f})".format(self.vi, self.gen, 
                                                        self.phase, self.kind, 
                                                        self.value)

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
            self.setText("{:.2f} {}".format(float(txt), self.unit))
            self.value = float(txt)
            self.build_cmd()
        self.exitEdit.emit(self)

            
    def _exitEdit(self):
        self.setFormatedText("","1")

"""
def get_unit(r,c):
    unit = ""
    if r in range(0,3) and c == 0: unit = "V" 
    if r in range(3,6) and c == 0: unit = "A" 
    if c == 1: unit = "°"
    if c == 2: unit = "Hz"
    return unit

def get_start_value(r,c):
    value = ""
    if c == 0: value = "0,00 {}".format(get_unit(r,c))
    if c == 1:
        if r == 0 or r == 3: value = "0,00 °"
        if r == 1 or r == 4: value = "-120,00 °"
        if r == 2 or r == 5: value = "120,00 °"
    if c == 2: value = "50,00 Hz"
"""



#--- Start up -----------------------------------------------------------------
def start():
    h.log (__name__+ " start")

#--- update  ------------------------------------------------------------------
def handle():
    h.log (__name__ + "handle")
