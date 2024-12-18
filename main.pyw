###############################################################################
#   104-CMC-Mapper  
#   
#   The mapper contains a IEC 60870-5-104 server to receive commands from  
#   any 104-client. Also implementet is a full access to Omicron CMC devices  
#   via the CMEngine.
#   The main functionnality of the maper is to control the Omicron 
#   CMC-devices by a 104-client.
#
#   Autor:   Pf@nne-mail.de
#   Date:    28.01.2022
#
###############################################################################
VERSION = "IEC 60870-5-104 to Omicron CMEngine Mapper - V1.31"

###############################################################################
#   IMPORT
###############################################################################
import GUI, IEC60870_5_104, CMC_Control
import helper as h, sys
from Qt_GUI.frm_main import Ui_frm_main
from PySide6.QtWidgets import QApplication, QMainWindow

###############################################################################
#   CALLBACKS
###############################################################################
# def timer1_callback():
#     pass
#     #h.log("here we go every 60 seconds")
    
# def timer2_callback():
#     pass
#     #h.log("here we go every 300 seconds")

# def on_IEC60870_5_104_I_Frame_GA_callback(APDU):
#     print("run into GA callback")
#     #print("Hello World!")
#     pass

# def on_IEC60870_5_104_I_Frame_received_callback(APDU):
#     print("run into I frame callback")
#     if APDU.ASDU.CASDU.DEZ == 356:
#         frm_main.cmc.set_command_from_104(APDU.ASDU.InfoObject)
#         #callback_send(cmc.is_on)
  
###############################################################################
#   MAIN START
###############################################################################
#t1 = h.idleTimer(60, timer1_callback)
#t2 = h.idleTimer(300, timer2_callback)

# IEC60870_5_104.callback.set_callback(on_IEC60870_5_104_I_Frame_GA_callback,
#                                      on_IEC60870_5_104_I_Frame_received_callback)

###############################################################################
#   MAIN LOOP
###############################################################################

app = QApplication([])
frm_main = GUI.Frm_main(VERSION)
frm_main.show()
sys.exit(app.exec())

