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
import helper as h
import time

###############################################################################
#   CALLBACKS
###############################################################################
def timer1_callback():
    h.log("here we go every 60 seconds")
def timer2_callback():
    h.log("here we go every 300 seconds")

def IEC60870_5_104_Server_callback(info):
    h.log(info)
    
###############################################################################
#   FUNCTIONS
###############################################################################

#--- Start up -----------------------------------------------------------------
h.start()
Server104 = IEC60870_5_104.Server(IEC60870_5_104_Server_callback, 2404)
#cmc.start()

t1 = h.idleTimer(60, timer1_callback)
t2 = h.idleTimer(300, timer2_callback)


###############################################################################
#   MAIN LOOP
###############################################################################

while True:
    #cmc.handle()
    time.sleep(10)
    
