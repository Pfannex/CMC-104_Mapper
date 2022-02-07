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
from PySide6.QtCore import Qt
from PySide6.QtWidgets import QMessageBox

###############################################################################
#   class CMEngine
###############################################################################

class CMEngine():
    def __init__(self,frm_main):   
        self.frm_main = frm_main
        self.t_dev = self.frm_main.tabw_devices
        self.device_log = self.frm_main.li_device_log
        self.exec_log = self.frm_main.li_exec_log
        self.t_qcmc = self.frm_main.tabw_quick_cmc
        self.device_locked = False
        self.is_on = False
        self.serial = ""
        self.typ = ""
        self.device_ip = ""
        self.device_id = 0
        self.cm_engine = win32com.client.Dispatch("OMICRON.CMEngAL")
        self.values = [["0,00 V", "0,0 °", "50,00 Hz"],
                       ["0,00 V", "-120,0 °", "50,00 Hz"],
                       ["0,00 V", "120,0 °", "50,00 Hz"],
                       ["0,00 A", "0,0 °", "50,00 Hz"],
                       ["0,00 A", "-120,0 °", "50,00 Hz"],
                       ["0,00 A", "120,0 °", "50,00 Hz"]]
        
        self.ana = {"v": [[0, 0, 0],      #Amplitude
                         [0, -120, 120],  #Phase
                         [50, 50, 50]],   #Frequency
                    "i": [[0, 0, 0],      #Amplitude
                         [0, -120, 120],  #Phase
                         [50, 50, 50]]    #Frequency
                    }    
        
    def scan_for_new(self):
        self.unlock_all_devices()
        #self.frm_main.bu_lock_device.setEnabled(False)

        #self.frm_main.print_memo("cmc","scan for CMC-Devices")
        #self.frm_main.lbl_locked_to.setText("scanning....")
        #self.device_log.addItem(QtWidgets.QListWidgetItem("scanning...."))
        #self.device_log.scrollToBottom()
        self.devlog("scanning....")

        self.cm_engine.DevScanForNew(False)
        ret = self.cm_engine.DevGetList(0)  #return all associated CMCs
        ##ret = "2,DE349J,1,3;1,JA254S,0,0;"  #return all associated CMCs
        #ret = ""  #return all associated CMCs
        ret = ret.split(";")
        while '' in ret: ret.remove('')
        self.device_list = []
        for device in ret: self.device_list.append(device.split(","))   
        
        if not len(self.device_list):
            """            msg = QMessageBox()
            msg.setIcon(QMessageBox.Information)
            msg.setText("No CMC-Device found!")
            #msg.setInformativeText("No CMC-Device found or selected!")
            msg.setWindowTitle("CMC-Device Scan for new")
            msg.setDetailedText("Beim Scan wurde keine CMC-Gerät gedunden, " + \
                                "oder es wurde keine CMC-Gerät ausgewählt!")
            msg.setStandardButtons(QMessageBox.Ok)
            #msg.buttonClicked.connect(msgbtn)
            retval = msg.exec_()
            self.frm_main.lbl_locked_to.setText("")
            """         
            #self.device_log.addItem(QtWidgets.QListWidgetItem("no devives found!"))
            #self.device_log.scrollToBottom()
            self.devlog("no devives found!")
            return
        else:
            self.frm_main.bu_lock_device.setEnabled(True)
            #self.frm_main.lbl_locked_to.setText("Devices found....")
            #self.device_log.addItem(QtWidgets.QListWidgetItem("devices found: {}".format(self.device_list)))
            #self.device_log.scrollToBottom()
            self.devlog("devices found: {}".format(self.device_list))

            tab = self.frm_main.tabw_devices
            self.t_dev.setRowCount(0)
            for device in self.device_list:
                self.t_dev.insertRow(self.t_dev.rowCount()) 
                item = QtWidgets.QTableWidgetItem(device[0])
                item.setFlags(Qt.ItemFlag.ItemIsUserCheckable | Qt.ItemFlag.ItemIsEnabled)
                item.setCheckState(Qt.CheckState.Unchecked)
                self.t_dev.setItem(self.t_dev.rowCount()-1, 0, item)
                item = QtWidgets.QTableWidgetItem(device[1])
                self.t_dev.setItem(self.t_dev.rowCount()-1, 1, item)
                item = QtWidgets.QTableWidgetItem(self.cm_engine.DeviceType(device[0])) 
                ##item = QtWidgets.QTableWidgetItem("CMC356") 
                self.t_dev.setItem(self.t_dev.rowCount()-1, 2, item)
                item = QtWidgets.QTableWidgetItem(self.cm_engine.IPAddress(device[0])) 
                ##item = QtWidgets.QTableWidgetItem("192.168.2.203") 
                self.t_dev.setItem(self.t_dev.rowCount()-1, 3, item)
            
            self.t_dev.item(0,0).setCheckState(Qt.CheckState.Checked)
            for j in range(4):
                self.t_dev.item(0,j).setBackground(QtGui.QColor("lightgrey")) 
                
    def unlock_all_devices(self):
        self.frm_main.bu_lock_device.setEnabled(False)
        #self.frm_main.bu_lock_device.setStyleSheet("background-color: lightgrey")
        self.frm_main.bu_lock_device.setText("Lock Device")
        self.frm_main.bu_lock_device.setStyleSheet("font-weight: normal; color: black")
        self.device_locked = True
        id = 0
        for i in range(self.t_dev.rowCount()):
            id = self.t_dev.item(i,0).text()
            #self.device_log.addItem(QtWidgets.QListWidgetItem("unlock deviceID= {}".format(id)))
            #self.device_log.scrollToBottom()
            self.devlog("unlock deviceID= {}".format(id))
            #self.frm_main.lbl_locked_to.setText("unlock deviceID= {}".format(id))
            #print("unlock device ID: {}".format(id))
            self.cm_engine.DevUnlock(id)

    def lock_device(self):
        self.unlock_all_devices() 
        for i in range(self.t_dev.rowCount()):
            if self.t_dev.item(i, 0).checkState() == QtCore.Qt.Checked:
                self.device_id = int(self.t_dev.item(i, 0).text())
                self.serial = self.cm_engine.SerialNumber(self.device_id)
                self.typ = self.cm_engine.DeviceType(self.device_id)
                self.device_ip = self.cm_engine.IPAddress(self.device_id)
                ##self.typ = "CMC356"
                ##self.device_ip = "192.168.2.333"
        
        if not self.device_id: 
            #self.device_log.addItem(QtWidgets.QListWidgetItem("No CMC-Device found or selected!"))
            #self.device_log.scrollToBottom()
            self.devlog("No CMC-Device found or selected!")
            """msg = QMessageBox()
            msg.setIcon(QMessageBox.Information)
            msg.setText("No CMC-Device found or selected!")
            #msg.setInformativeText("No CMC-Device found or selected!")
            msg.setWindowTitle("CMC-Device lock")
            msg.setDetailedText("Beim Scan wurde keine CMC-Gerät gedunden, " + \
                                "oder es wurde keine CMC-Gerät ausgewählt!")
            msg.setStandardButtons(QMessageBox.Ok)
            #msg.buttonClicked.connect(msgbtn)
            retval = msg.exec_()"""
        else: 
            #self.cm_engine.DevUnlock(self.device_id)
            self.cm_engine.DevLock(self.device_id)
            self.device_locked = True
            self.frm_main.bu_lock_device.setText("locked to: {} - {}".format(self.serial,self.device_ip))
            self.frm_main.bu_lock_device.setStyleSheet("font-weight: bold; color: red")
            #self.device_log.addItem(QtWidgets.QListWidgetItem("Mapper locked to: {} - {}".format(self.serial,self.device_ip)))
            #self.device_log.scrollToBottom()
            self.devlog("Mapper locked to: {} - {}".format(self.serial,self.device_ip))
            #self.frm_main.lbl_locked_to.setText("Mapper locked to: {} - {}".format(self.typ,self.device_ip))

    def cmc_power(self):
        if self.is_on:
            self.frm_main.bu_cmc_on.setStyleSheet("background-color: green")
            self.frm_main.bu_cmc_on.toggle()
            #self.cmd("out:on")
            #self.frm_main.print_memo("cmc","CMC --> ON")
            self.is_on = False
        else:  
            self.frm_main.bu_cmc_on.setStyleSheet("background-color: red")
            self.frm_main.bu_cmc_on.toggle()
            self.is_on = True
            #self.cmd("out:off")
            #self.cmd("out:ana:off(zcross)")
            #self.frm_main.print_memo("cmc","CMC --> OFF")
   
            
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
        # 255           | 0          | 1        | SCS_ON/OFF| Power on/off
        # 255           | 0          | 2        | res_out   | reset triple

        ioa_1 = info_object.address._1
        ioa_2 = info_object.address._2
        ioa_3 = info_object.address._3
        dez = info_object.address.DEZ
        info_detail_typ = info_object.dataObject[0].name  #SCO / R32

        if ioa_1 in range(1, 21) and info_detail_typ == "R32":   #out ana
            self.set_quick_table(info_object)
            
    #----<set quickCMC tableView>----------------------------------------------
    def set_quick_table(self, info_object):
        value = info_object.dataObject[0].detail[0].value
        gen = info_object.address._1
        r = info_object.address._2 -1
        c = info_object.address._3 -1
        unit = "V"
        unit = "°" if c == 1 else "Hz"
        if c == 0 and r in range(0,3): unit = "V"
        if c == 0 and r in range(3,6): unit = "A"
        self.values[r][c] = "{:.2f} {}".format(value, unit)
        x = QtWidgets.QTableWidgetItem(self.values[r][c])
        x.setTextAlignment(Qt.AlignVCenter | Qt.AlignRight)
        self.t_qcmc.setItem(r,c,x)
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
         
    #----<set quickCMC tableView>----------------------------------------------
    def set_exec(self, cmd):
        item = QtWidgets.QListWidgetItem("Exec: {}".format(cmd))
        self.log.addItem(item)
        self.log.scrollToBottom()
        if self.device_locked:
            self.cm_engine.Exec(self.device_id, cmd)
            if self.is_on:
                self.cm_engine.Exec(self.device_id, "out:on")
        else:
            self.frm_main.print_memo("e","No CMC connected!")
            
        #"out:v(1:1):a(10);p(0);f(50)"               
        
    def devlog(self, msg):
        self.device_log.addItem(QtWidgets.QListWidgetItem(msg))
        self.device_log.scrollToBottom()
    def execlog(self,msg):
        self.exec_log.addItem(QtWidgets.QListWidgetItem(msg))
        self.exec_log.scrollToBottom()

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



#--- Start up -----------------------------------------------------------------
def start():
    h.log (__name__+ " start")

#--- update  ------------------------------------------------------------------
def handle():
    h.log (__name__ + "handle")


"""        
if info_object.address.DEZ == 1 and info_detail_typ == "SCO":
    self.power(info_object.dataObject[0].detail[2].state)
if ioa_1 == 1 and ioa_2 in range(1,7) and ioa_3 in range (1,4) and info_detail_typ == "R32":
    value = info_object.dataObject[0].detail[0].value
    self.prepare_output(ioa_1, ioa_2, ioa_3, value)
if dez == 3:
    value = info_object.dataObject[0].detail[0].value
    self.triple_out(1, "v", value)
if dez == 4:
    value = info_object.dataObject[0].detail[0].value
    self.triple_out(1, "i", value)
if dez == 99:
    self.reset_output()
        
"""

