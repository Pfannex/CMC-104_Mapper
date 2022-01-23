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
import threading
###############################################################################
#   CALLBACKS
###############################################################################

class WorkerClass1():
    def print_class1():
        print("--------")
        print("class1")
        print("--------")

class ServerClass2():
    def __init__(self, callback):
        self.callback = callback
        thread = threading.Thread(target=self.Wait_for_client)
        thread.start()
        thread.join()
        
    def print_class2():
        print("--------")
        print("class2")
        print("--------")
        
    def Wait_for_client(self):
        while 1:
            print("1 = class 1")
            print("2 = class 2")
            print("q = quit")
            key = input()
            if key == "1":
                self.callback(key)
            if key == "2":
                self.callback(key)
            if key == 'q':
                print("bye")
                exit()


def on_callback(key):
    print("{} pressed (callback)".format(key))
    if key == "1": c1.print_class1
    if key == "2": c2.print_class2 
       
c1 = WorkerClass1()
c2 = ServerClass2(on_callback)

def main():
    pass

if __name__ == '__main__':
    main()