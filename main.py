###############################################################################
#   104-CMC-Mapper  
#   
#   The mapper contains a IEC 60870-5-104 server to receive commands from  
#   any104-client. Also implementet is a full access to Omicron CMC devices  
#   via the CMEngine.
#   The main functionnality of the maper is to control the Omicron 
#   CMC-devices by a 104-client.
#
#   Autor:   Pf@nne-mail.de
#   Version: V1.00
#
###############################################################################

###############################################################################
#   IMPORT
###############################################################################
import CMEngine as cmc
import IEC60870_5_104
import IEC60870_5_104_Typs as T104
import helper as h
import time

###############################################################################
#   CALLBACKS
###############################################################################
def timer1_callback():
    h.log("here we go every 60 seconds")
def timer2_callback():
    h.log("here we go every 300 seconds")

def on_IEC60870_5_104_I_Frame_GA_callback(APDU):
    h.log("<- I Type={} - ".format(APDU.ASDU.TI.Typ) + APDU.ASDU.TI.ref)
    h.log("     Qualifier of interrogation command = 0x{0:02X} [{0:}]".
                    format(APDU.ASDU.InfoObj.InfoElement["e1"]["B1"]["QOIe"]))

def on_IEC60870_5_104_I_Frame_received_callback(APDU):
    h.log("{} - ".format(APDU.ASDU.TI.Typ) + APDU.ASDU.TI.ref)
    if APDU.ASDU.TI.Typ == 45:
        h.log("S/E = {}".format(APDU.ASDU.InfoObj.InfoElement["e1"]["B1"]["SE"]))
        h.log("QU =  {}".format(APDU.ASDU.InfoObj.InfoElement["e1"]["B1"]["QU"]))
        h.log("SCS = {}".format(APDU.ASDU.InfoObj.InfoElement["e1"]["B1"]["SCS"]))
    if APDU.ASDU.TI.Typ == 46:
        h.log("S/E = {}".format(APDU.ASDU.InfoObj.InfoElement["e1"]["B1"]["SE"]))
        h.log("QU =  {}".format(APDU.ASDU.InfoObj.InfoElement["e1"]["B1"]["QU"]))
        h.log("DCS = {}".format(APDU.ASDU.InfoObj.InfoElement["e1"]["B1"]["DCS"]))
    if APDU.ASDU.TI.Typ == 58:
        h.log("S/E = {}".format(APDU.ASDU.InfoObj.InfoElement["e1"]["B1"]["SE"]))
        h.log("QU =  {}".format(APDU.ASDU.InfoObj.InfoElement["e1"]["B1"]["QU"]))
        h.log("SCS = {}".format(APDU.ASDU.InfoObj.InfoElement["e1"]["B1"]["SCS"]))
        h.log("Time {0:02}.{1:02}.20{2:02}-{3:02}:{4:02}:{5:02}.{6:03} /IV={7}/SU={8}/DoW={9}".format(
                APDU.ASDU.InfoObj.InfoElement["e2"]["D"],
                APDU.ASDU.InfoObj.InfoElement["e2"]["M"],
                APDU.ASDU.InfoObj.InfoElement["e2"]["Y"],
                APDU.ASDU.InfoObj.InfoElement["e2"]["H"],
                APDU.ASDU.InfoObj.InfoElement["e2"]["MIN"],
                APDU.ASDU.InfoObj.InfoElement["e2"]["S"],
                APDU.ASDU.InfoObj.InfoElement["e2"]["MS"],
                APDU.ASDU.InfoObj.InfoElement["e2"]["IV"],
                APDU.ASDU.InfoObj.InfoElement["e2"]["SU"],
                APDU.ASDU.InfoObj.InfoElement["e2"]["DOW"]))
    
      
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
#cmc.start()

t1 = h.idleTimer(60, timer1_callback)
t2 = h.idleTimer(300, timer2_callback)

###############################################################################
#   MAIN LOOP
###############################################################################

while True:
    #cmc.handle()
    time.sleep(10)
    
