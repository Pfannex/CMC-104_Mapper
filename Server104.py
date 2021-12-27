###############################################################################
#   IEC 60870-5-104 server
#
#   APDU = Application Protocol Data Unit            
#          [FRAME]
#   APCI = Application Protocol Control Information  
#          [Format (I,S,U), Tx/Rx-Counter]       
#   ASDU = Application Service Data Unit
#          [Typ, COT, Addressing, Info-Objects]
#
###############################################################################

###############################################################################
#   IMPORT
###############################################################################
import socket
import struct
import helper as h

###############################################################################
#   FUNCTIONS
###############################################################################

#--- global -------------------------------------------------------------------
bind_ip = ''
bind_port = 2404
server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind((bind_ip, bind_port))


#--- Start up -----------------------------------------------------------------
def start():
    h.log (__name__+ " start")
    open()
 
#--- update  ------------------------------------------------------------------
def handle():
    h.log (__name__ + "handle")
    
    
#--- open  --------------------------------------------------------------------
def open():
    server.listen(5)  # max backlog of connections
    h.log('IEC 60870-5-104 Server listening on {}:{}'.format(bind_ip, bind_port))

 
