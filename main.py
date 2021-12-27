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
import Server104 as c104
import helper as h
import time

###############################################################################
#   FUNCTIONS
###############################################################################

#--- Start up -----------------------------------------------------------------
cmc.start()
c104.start()
h.start()
    

###############################################################################
#   MAIN LOOP
###############################################################################

while True:
    cmc.update()
    c104.update()
    h.update()
    time.sleep(1)
    
