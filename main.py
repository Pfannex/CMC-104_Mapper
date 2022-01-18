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
#   Version: V1.00
#   Date:    10.01.2022
#
###############################################################################

###############################################################################
#   IMPORT
###############################################################################
import CMEngine
import win32com.client # get e.g. via "pip install pywin32"

import IEC60870_5_104
import IEC60870_5_104_APDU as TAPDU
import helper as h
import time

#cmc = CMEngine.CMCControll()
#cmc.on()


###############################################################################
#   CALLBACKS
###############################################################################
def timer1_callback():
    h.log("here we go every 60 seconds")
    
def timer2_callback():
    h.log("here we go every 300 seconds")

def on_IEC60870_5_104_I_Frame_GA_callback(APDU):
    pass
    #h.log("incomming {} - {}".format(APDU.ASDU.TI.ref, APDU.ASDU.TI.des))
    #h.log(APDU.ASDU.InfoObject.data[0].typ)
    #h.log(APDU.ASDU.InfoObject.address._1)

def on_IEC60870_5_104_I_Frame_received_callback(APDU):
    if APDU.ASDU.InfoObject.address.DEZ == 1:
        cmc.on(cmEngine)
    
    #print(APDU.ASDU.InfoObject.dataObject[0].detail[2].state)
    pass
     
###############################################################################
#   FUNCTIONS
###############################################################################


###############################################################################
#   MAIN START
###############################################################################
h.start()
Server104 = IEC60870_5_104.Server(on_IEC60870_5_104_I_Frame_GA_callback,
                                  on_IEC60870_5_104_I_Frame_received_callback,
                                  "127.0.0.1", 2404)

cmEngine = win32com.client.Dispatch("OMICRON.CMEngAL")
h.log(cmEngine.DevScanForNew(False))
h.log(cmEngine.DevGetList(0))  #return all associated CMCs


cmc = CMEngine.CMCControll()



t1 = h.idleTimer(60, timer1_callback)
t2 = h.idleTimer(300, timer2_callback)

###############################################################################
#   MAIN LOOP
###############################################################################

while True:
    #cmc.handle()
    time.sleep(10)
    
