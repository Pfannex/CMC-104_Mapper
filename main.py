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
import socketserver

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

def on_IEC60870_5_104_I_Frame_received_callback(APDU, callback_send):
    pass
    #global cmc, iec104_server
    #if APDU.ASDU.CASDU.DEZ == 356:
        #cmc.set_command(APDU.ASDU.InfoObject)
        #callback_send(cmc.is_on)
     
###############################################################################
#   FUNCTIONS
###############################################################################

###############################################################################
#   MAIN START
###############################################################################
t1 = h.idleTimer(60, timer1_callback)
t2 = h.idleTimer(300, timer2_callback)

h.start()
#cmc = CMC_Control.CMEngine()
#iec104_server = IEC60870_5_104.IEC_104_Server(on_IEC60870_5_104_I_Frame_GA_callback,
#                                              on_IEC60870_5_104_I_Frame_received_callback,
#                                              "127.0.0.1", 2404)

###############################################################################
#   MAIN LOOP
###############################################################################

class MyTCPHandler(socketserver.BaseRequestHandler):
     
    def handle(self):
        # self.request is the TCP socket connected to the client
        #self.server.socket_type = socket.SOCK_STREAM
        self.data = self.request.recv(1024).strip()
        print("{}:{} wrote:".format(self.client_address[0],self.client_address[1]))
        print(self.data)
        # just send back the same data, but upper-cased
        #self.request.sendall(self.data.upper())
        
        msg = self.data
        print(msg)
        
        if msg[2] == 0x07:
            h.log("<- U (STARTDT act)")
            data = bytearray(msg)
            data[2] = 0x0B
            self.request.sendall(data)
            h.log("-> U (STARTDT con)")
        elif msg[2] == 0x43:                              
            h.log("<- U (TESTFR act)")
            data = bytearray(msg)
            data[2] = 0x83
            self.request.sendall(data)
            h.log("-> U (TESTFR con)")
        else:
            h.log("NIL: {}".fomat(msg))


HOST, PORT = "localhost", 2404

    # Create the server, binding to localhost on port 9999
with socketserver.TCPServer((HOST, PORT), MyTCPHandler) as server:
        # Activate the server; this will keep running until you
        # interrupt the program with Ctrl-C
        server.serve_forever()



while True:
    #cmc.handle()
    #time.sleep(10)
    pass
    
