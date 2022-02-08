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
import CMC_Control, SCD
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
        self.scd = SCD.SCD(self)
        
        #Buttons
        self.bu_firstButton.clicked.connect(self.start_services)
        self.bu_scan_devices.clicked.connect(self.cmc.scan_for_new)
        self.bu_lock_device.clicked.connect(self.cmc.lock_device)
        self.bu_lock_device.setEnabled(False)
        self.bu_cmc_on.clicked.connect(self.cmc.cmc_power)
        self.bu_cmc_on.setStyleSheet("background-color: green")
        self.bu_cmc_on.setCheckable(True)
        self.bu_import_scd.clicked.connect(self.scd.load_file)

        #Table devices
        cmc_dev = self.tabw_devices
        cmc_dev.setEditTriggers(QtWidgets.QAbstractItemView.NoEditTriggers)
        #cmc_dev.setHorizontalHeaderLabels(["ID","Serial","Typ","IP"])
        cmc_dev.setColumnWidth(0,40)
        cmc_dev.setColumnWidth(1,60)
        cmc_dev.setColumnWidth(2,60)
        cmc_dev.setColumnWidth(3,50)
        cmc_dev.itemClicked.connect(self.handle_item_clicked)
        #Table Quick CMC
        q_cmc = self.tabw_quick_cmc
        #q_cmc.setHorizontalHeaderLabels(["Amp.", "Phase", "Freq"])
        #q_cmc.setVerticalHeaderLabels(["UL1-N", "UL2-N", "UL3-N", "IL1", "IL2", "IL3"])
        q_cmc.setColumnWidth(0,50)
        q_cmc.setColumnWidth(1,50)
        q_cmc.setColumnWidth(2,50)
        for r in range(6):
            for c in range(3):
                x = QtWidgets.QTableWidgetItem(self.cmc.values[r][c])
                x.setTextAlignment(Qt.AlignVCenter | Qt.AlignRight)
                q_cmc.setItem(r,c,x)
                
        #self.tabw_quick_cmc.itemChanged.connect(self.cmc.on_edit_quick_table)

        #self.lineEdit.setValidator(QRegularExpressionValidator(QRegularExpression("[0-9]{1,3}[,][0-9]{1,2}")))
        #self.tabw_quick_cmc.setCellWidget(1,1,self.lineEdit)
        
        #x = TheEditor()
        #x.punched.connect(self.go)
        self.tabw_quick_cmc.setCellWidget(0,0,TheEditor())
        self.tabw_quick_cmc.setCellWidget(0,1,TheEditor())
        self.tabw_quick_cmc.setCellWidget(0,2,TheEditor())
    
    
    def go(self, y):
        print("go")
        print(y.text())
        txt = self.lineEdit.text().replace(",",".")
        #txt = filter(lambda ch: ch not in "01234567890,.", txt)
        for chr in txt:
            if not chr in "01234567890,.":
                txt = txt.replace(chr,"")
        if not txt:        
            self.lineEdit.setText("")
        else:
            self.lineEdit.setText("{:.2f} V".format(float(txt)))
 
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
        
class quick_line(QLineEdit):
    def __init__(self, parent=None):
        super(quick_line, self).__init__(parent)

        pass
        #self.r = r
        #self.c = c
        self.unit = ""
        #self.unit  = "V" if r in range(0,3) else "A"
        #f c == 1: self.unit  = "°" 
        #elif c == 2: self.unit  = "Hz" 
        
    def editingFinished(self, event):
        print('Captured Key Press Event in',self.Id,') ',event.text())
        QLineEdit.editingFinished(self, event)


class TheEditor(QLineEdit):
    # a signal to tell the delegate when we have finished editing
    #editingFinished = Signal()
    punched = Signal()
    def __init__(self, parent=None):
            # Initialize the editor object
            super(TheEditor, self).__init__(parent)
            self.editingFinished.connect(self.punch)
            #self.setAutoFillBackground(True)
            #self.setValidator(QIntValidator(0,999999999, self))

    def focusOutEvent(self, event):
            # Once focus is lost, tell the delegate we're done editing
            #print("_editingFinished")
            self.punch()
            ###self.hide()
            #self.editingFinished.emit()
            
    def punch(self):
        print(self.text())

        #print("go")
        #print(y.text())
        txt = self.text().replace(",",".")
        #txt = filter(lambda ch: ch not in "01234567890,.", txt)
        for chr in txt:
            if not chr in "01234567890,.":
                txt = txt.replace(chr,"")
        if not txt:        
            self.setText("")
        else:
            self.setText("{:.2f} V".format(float(txt)))




        ''' Punch the bag '''
        self.punched.emit()
        #self.editingFinished.emit()



"""
class PunchingBag(QLineEdit):
    ''' Represents a punching bag; when you punch it, it
        emits a signal that indicates that it was punched. '''
    punched = Signal()

    def __init__(self, parent=None):
        super(PunchingBag, self).__init__(parent)

 
    #def __init__(self):
        # Initialize the PunchingBag as a QObject
        #QLineEdit.__init__(self)
        #self._ .editingFinished(self.punch)
        
        #self.punch()
 
    def punch(self):
        print("nu")
        ''' Punch the bag '''
        self.punched.emit()
        
    def _editingFinished(self):
        print("_editingFinished")
"""