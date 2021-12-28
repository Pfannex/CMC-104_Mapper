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
    client_sock, address = server.accept()
    print('Accepted connection from {}:{}'.format(address[0], address[1]))
    handle_client_connection(client_sock)
   
#--- open  --------------------------------------------------------------------
def open():
    server.listen(5)  # max backlog of connections
    h.log('IEC 60870-5-104 Server listening on {}:{}'.format(bind_ip, bind_port))

#--- handle client  -----------------------------------------------------------
def handle_client_connection(client_socket):
    RxCounter = 0
    TxCounter = 0
    try: 
        while True: 
            request = client_socket.recv(1024)
            if not request:
                client_socket.close()
                print ("no Payload!")
                break
            
            elif request[2] == 0x07:
                print ("<- U (STARTDT Act)")
                data = bytes.fromhex('68040B000000')
                client_socket.send(data)
                print ("-> U (STARTDT Con)")
       
            elif request[1] == 0x0e:   #I-Frame
                RxCounter = RxCounter + 1
                
                if request[6] == 0x64:   #C_IC_NA_1 (100)
                    print ("<- I (C_IC_NA_1 Act [100])")
                    data = bytearray(request)
                    data[2] = TxCounter << 1
                    data[4] = RxCounter << 1
                    data[8] = 0x07
                    data[10] = 0xc3
                    data[11] = 0x33
                
                    client_socket.send(data)
                    print ("-> I (C_IC_NA_1 ActCon) ("+str(TxCounter)+"/"+str(RxCounter)+")")
                    TxCounter = TxCounter + 1
                    #print ("update Counter - Rx: " + str(RxCounter) + " | Tx: " + str(TxCounter))
                
                elif request[6] == 0x2e:   #C_DC_NA_1 (46)
                    print ("<- I (C_DC_NA_1 Act [46])")
                    val = "IV"
                    if request[15] == 1:
                        val = "OPEN"
                    if request[15] == 2:
                        val = "CLOSE"
                    print ("  ----------------")                   
                    print ("    Value = " + val)                   
                    print ("  ----------------")                   
                    data = bytearray(request)
                    data[2] = TxCounter << 1
                    data[4] = RxCounter << 1
                    data[8] = 0x07
                
                    client_socket.send(data)
                    print ("-> I (C_DC_NA_1 ActCon) ("+str(TxCounter)+"/"+str(RxCounter)+")")
                    TxCounter = TxCounter + 1
                    #print ("update Counter - Rx: " + str(RxCounter) + " | Tx: " + str(TxCounter))
                    
                else:
                    print ("<- I (unknown)")
                
                    
            elif request[2] == 0x43:
                print ("<- U (TESTFR act)")
                data = bytes.fromhex('68 04 83 00 00 00')
                client_socket.send(data)
                print ("-> U (TESTFR con)")
                
            elif request[2] == 0x01:
                print ("<- S (Rx con) Rx = " + str(request[4] >> 1))
                #data = bytes.fromhex('68 04 83 00 00 00')
                #client_socket.send(data)
                #print ("-> U (TESTFR con)")
                
            else:
                print('Received {}'.format(request))

    finally: 
        client_socket.close()

 
