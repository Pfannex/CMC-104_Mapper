import helper as h
import time
import socket
import threading
    
class Server(threading.Thread):
    def __init__(self, callback, port):
        self.callback = callback
        #TCP-Server
        self.IP = "127.0.0.1"
        self.port = port
        self.RxCounter = 0
        self.TxCounter = 0
        
        self.TCPsever = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.TCPsever.bind((self.IP, self.port))
        self.TCPsever.listen(5)  # max backlog of connections
        h.log('IEC 60870-5-104 Server listening on {}:{}'.format(self.IP, self.port))
        
        threading.Thread.__init__(self)
        self.running = True
        self.start()
    def run(self):  #threat running continuously
        while self.running:
            self.client_socket, address = self.TCPsever.accept()   #waiting for client
            h.log('IEC 60870-5-104 Client connectet -  {}:{}'.format(address[0], address[1]))
            self.handle_client_connection(self.client_socket)
            h.log('IEC 60870-5-104 Server listening on {}:{}'.format(self.IP, self.port))
    def stop(self):
        self.running = False
    def resume(self):
        self.running = True
        
    #--- handle client  -----------------------------------------------------------
    def handle_client_connection(self, client_socket):
        try: 
            while True: 
                try:
                    request = client_socket.recv(1024)
                except Exception as inst:
                    client_socket.close()
                    h.log_error(inst)
                    break
                if request[0] == 0x68:
                    #S-Frame
                    if (request[2] & 1 != 0) & (request[2]>>1 & 1 == 0):    #01 S-Frame
                        self.handle_sFrame(request)
                    #U-Frame
                    if (request[2] & 1 != 0) & (request[2]>>1 & 1 != 0):    #11 U-Frame
                        self.handle_uFrame(request, client_socket)
                    #I-Frame        
                    if request[2] & 1 == 0:                                 #_0 I-Frame
                        self.handle_iFrame(request, client_socket)
        finally: 
            h.log_error("client disconnected")
            client_socket.close()

    #--- U-Frame handle  ------------------------------------------------------
    def handle_uFrame(self, frame, client):
        if frame[2] == 0x07:                              
            h.log("<- U (STARTDT act)")
            data = bytearray(frame)
            data[2] = 0x0B
            client.send(data)
            h.log("-> U (STARTDT con)")
        elif frame[2] == 0x13:                              
            h.log("<- U (STOPDT act)")
            data = bytearray(frame)
            data[2] = 0x23
            client.send(data)
            h.log("-> U (STOPDT con)")
        elif frame[2] == 0x43:                              
            h.log("<- U (TESTFR act)")
            data = bytearray(frame)
            data[2] = 0x83
            client.send(data)
            h.log("-> U (TESTFR con)")
        else:
            h.log('<- unknown U {}'.format(frame))
   
    #--- S-Frame handle  ------------------------------------------------------
    def handle_sFrame(self, frame):
        h.log("<- S (Rx con) Rx = " + 
                str(int.from_bytes([frame[4]>>1 , frame[5]], "little")))

    #--- I-Frame handle  ------------------------------------------------------
    def handle_iFrame(self, frame, client):
        if frame[1] == 0x0e:   #I-Frame
            self.RxCounter += 1
                
            if frame[6] == 0x64:   #C_IC_NA_1 (100)
                print ("<- I (C_IC_NA_1 Act [100])")
                data = bytearray(frame)
                data[2] = self.TxCounter << 1
                data[4] = self.RxCounter << 1
                data[8] = 0x07
                data[10] = 0xc3
                data[11] = 0x33
                
                client.send(data)
                print ("-> I (C_IC_NA_1 ActCon) ("+str(self.TxCounter)+"/"+str(self.RxCounter)+")")
                self.TxCounter += 1
                #print ("update Counter - Rx: " + str(RxCounter) + " | Tx: " + str(TxCounter))
                
            elif frame[6] == 0x2e:   #C_DC_NA_1 (46)
                print ("<- I (C_DC_NA_1 Act [46])")
                val = "IV"
                if frame[15] == 1:
                    val = "OPEN"
                if frame[15] == 2:
                    val = "CLOSE"
                print ("  ----------------")                   
                print ("    Value = " + val)                   
                print ("  ----------------")                   
                data = bytearray(frame)
                data[2] = self.TxCounter << 1
                data[4] = self.RxCounter << 1
                data[8] = 0x07
                
                client.send(data)
                print ("-> I (C_DC_NA_1 ActCon) ("+str(self.TxCounter)+"/"+str(self.RxCounter)+")")
                self.TxCounter += 1
                #print ("update Counter - Rx: " + str(RxCounter) + " | Tx: " + str(TxCounter))
                    
            else:
                print ("<- I (unknown)")
                

