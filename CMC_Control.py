###############################################################################
#   CMEngine connector
###############################################################################
import helper as h
import win32com.client

class CMEngine():
    def __init__(self):   
        h.log("scan for CMC-Devices")
        self.cm_engine = win32com.client.Dispatch("OMICRON.CMEngAL")
        device_list = self.cm_engine.DevGetList(0)  #return all associated CMCs
        h.log("Devices found: " + str(int(len(device_list)/4)))
        print(self.cm_engine.DevScanForNew(False))
        #if self.cm_engine.DevScanForNew(False) != ""
        self.device_id = int(device_list[0])        #first associated CMC is used - make sure only one is associated

        self.cm_engine.DevUnlock(self.device_id)
        self.cm_engine.DevLock(self.device_id)
        #device information
        device_list = device_list.split(",")
        h.log("ID :  "+device_list[0])
        h.log("SER:  "+device_list[1])
        h.log("Type: "+self.cm_engine.DeviceType(self.device_id))
        h.log("IP:   "+self.cm_engine.IPAddress(self.device_id))
        h.log("--------------------------")

    def power(self, command):
        if command == "SCS_ON":
            print("on")
            #self.cm_engine.Exec(self.devId,"out:on")
        else:  
            print("off")
            #self.cm_engine.Exec(self.devId,"out:off")
            #self.cm_engine.Exec(self.devId,"out:ana:off(zcross)")
            
    def set_output(address, value):
        print(address.DEZ)
        print(value)
         
        #self.cm_engine(devId,"out:v(1:1):a(10);p(0);f(50)")	
        #self.cm_engine(devId,"out:v(1:2):a(10);p(-120);f(50)")	
        #self.cm_engine(devId,"out:v(1:3):a(10);p(120);f(50)")	
 
 
 
#def __repr__(self):
    #return self.CMC

    #configure voltage output
       #if cmd == "SCS_ON":
        #    self.on()
        #else:
        #    self.off()

"""   
       #CMC.Exec(devId,"out:v(1:1):a(10);p(0);f(50)")	
        #CMC.Exec(devId,"out:v(1:2):a(10);p(-120);f(50)")	
        #CMC.Exec(devId,"out:v(1:3):a(10);p(120);f(50)")	
        #if cmd == "SCS_ON":
 

    def on(self):
        self.CMC.Ecm_engineec(devId,"out:on")
    def off(self):
        self.CMC.Ecm_engineec(devId,"out:off")
    def out(self, cmd):
        self.CMC.Ecm_engineec(self.devId,"out:on")
        time.sleep(2)
        self.CMC.Ecm_engineec(self.devId,"out:off")
        self.CMC.Ecm_engineec(self.devId,"out:ana:off(zcross)")
        self.CMC.DevUnlock(self.devId)
        pass
"""

#--- Start up -----------------------------------------------------------------
def start():
    h.log (__name__+ " start")

#--- update  ------------------------------------------------------------------
def handle():
    h.log (__name__ + "handle")




'''
#configure measurement input
CMC.Ecm_engineec(devId,"inp:ana(1,2,3):def(v,100)")
CMC.Ecm_engineec(devId,"inp:mode(multimeter)")
CMC.Ecm_engineec(devId,"inp:ana:cfg(3.16,1.0)")

CMC.Ecm_engineec(devId,"inp:ana:clr(all)")
CMC.Ecm_engineec(devId,"inp:ana(1,2,3):rms?(1.0)")    #handle 1
CMC.Ecm_engineec(devId,"inp:ana(1,2,3):phase?(1.0)")  #handle 2


#-- main -----------------------------------

#loop
try:
    while True:
        result = CMC.Ecm_engineec(devId,"inp:ana:get?(1)")
        U_List = result.split(",")
        result = CMC.Ecm_engineec(devId,"inp:ana:get?(2)")
        P_List = result.split(",")
        UL1 = "{:3.2f} V ".format(float(U_List[1])) + "| {:7.2f} ° ".format(float(P_List[1]))
        UL2 = "{:3.2f} V ".format(float(U_List[5])) + "| {:7.2f} ° ".format(float(P_List[3]))
        UL3 = "{:3.2f} V ".format(float(U_List[9])) + "| {:7.2f} ° ".format(float(P_List[5]))
        print ("--------------------------")
        print (UL1)
        print (UL2)
        print (UL3)
        print ("press Ctrl-c to cancel")

        #MQTT
        client.publish("UL1", UL1)
        client.publish("UL2", UL2)
        client.publish("UL3", UL3)
        time.sleep(1)
ecm_enginecept KeyboardInterrupt:
    pass

#-- close -----------------------------------
CMC.Ecm_engineec(devId,"out:ana:off(zcross)")
CMC.DevUnlock(devId)
client.loop_stop()
print ("Ecm_engineIT")

'''
