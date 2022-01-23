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
import IEC60870_5_104
import helper as h
import CMC_Control

###############################################################################
#   CALLBACKS
###############################################################################
def timer1_callback():
    pass
    #h.log("here we go every 60 seconds")
    
def timer2_callback():
    pass
    #h.log("here we go every 300 seconds")

def on_IEC60870_5_104_I_Frame_GA_callback(APDU):
    pass

def on_IEC60870_5_104_I_Frame_received_callback(APDU):
    if APDU.ASDU.CASDU.DEZ == 356:
        cmc.set_command(APDU.ASDU.InfoObject)
        #iec104_server.ga_callback()
     
###############################################################################
#   FUNCTIONS
###############################################################################

###############################################################################
#   MAIN START
###############################################################################
t1 = h.idleTimer(60, timer1_callback)
t2 = h.idleTimer(300, timer2_callback)

#h.start()
cmc = CMC_Control.CMEngine()
iec104_server = IEC60870_5_104.IEC_104_Server(on_IEC60870_5_104_I_Frame_GA_callback,
                                              on_IEC60870_5_104_I_Frame_received_callback,
                                              "127.0.0.1", 2404)

###############################################################################
#   MAIN LOOP
###############################################################################

while True:
    #cmc.handle()
    #time.sleep(10)
    pass
    
