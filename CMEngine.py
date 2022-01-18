###############################################################################
#   CMEngine connector
###############################################################################
import helper as h
import win32com.client # get e.g. via "pip install pywin32"
#import pythoncom
import sys
import time

cmEngine = win32com.client.Dispatch("OMICRON.CMEngAL")
deviceID = 0

class CMCControll():
    def __init__(self):
        #Notepad
        #self.shell = win32com.client.Dispatch("WScript.Shell")
        
        #CMC
        #self.cmEngine = win32com.client.Dispatch("OMICRON.CMEngAL")
        global cmEngine
        global deviceID

        h.log(cmEngine.DevScanForNew(False))
        deviceList = cmEngine.DevGetList(0)  #return all associated CMCs
        deviceID = int(deviceList[0])         #first associated CMC is used - make sure only one is associated
        cmEngine.DevUnlock(deviceID)
        cmEngine.DevLock(deviceID)
        #device information
        deviceList = deviceList.split(",")
        h.log("Devices found: " + str(int(len(deviceList)/4)))
        h.log("ID:   "+deviceList[0])
        h.log("SER:  "+deviceList[1])
        h.log("Type: "+cmEngine.DeviceType(deviceID))
        h.log("IP:   "+cmEngine.IPAddress(deviceID))
        h.log("--------------------------")
        cmEngine.DevUnlock(deviceID)
    
    def notepad(self):
        #Notepad
        self.shell.Run("notepad " + sys.argv[0])

    def cmcOn(self):
        global cmEngine
        global deviceID
        h.log("####### start CMC ######################")
        cmEngine.Exec(deviceID,"out:on")
        time.sleep(2)
        cmEngine.Exec(deviceID,"out:off")
        cmEngine.Exec(deviceID,"out:ana:off(zcross)")
        cmEngine.DevUnlock(deviceID)
        h.log("####### stop CMC #######################")


"""       
    #self.x = win32com.client.Dispatch("OMICRON.CMEngAL")
        x.DevScanForNew(False)
        devList = x.DevGetList(0) #return all associated CMCs
        self.devId = int(devList[0])     #first associated CMC is used - make sure only one is associated

        x.DevUnlock(self.devId)
        x.DevLock(self.devId)
    #device information
        deviceList = devList.split(",")
        h.log("Devices found: " + str(int(len(deviceList)/4)))
        h.log("ID :  "+deviceList[0])
        h.log("SER:  "+deviceList[1])
        h.log("Type: "+x.DeviceType(self.devId))
        h.log("IP:   "+x.IPAddress(self.devId))
        h.log("--------------------------")
"""

 
"""       def off(self):
        self.CMC.Exec(devId,"out:off")
    def out(self, cmd):
        self.CMC.Exec(self.devId,"out:on")
        time.sleep(2)
        self.CMC.Exec(self.devId,"out:off")
        self.CMC.Exec(self.devId,"out:ana:off(zcross)")
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
CMC.Exec(devId,"inp:ana(1,2,3):def(v,100)")
CMC.Exec(devId,"inp:mode(multimeter)")
CMC.Exec(devId,"inp:ana:cfg(3.16,1.0)")

CMC.Exec(devId,"inp:ana:clr(all)")
CMC.Exec(devId,"inp:ana(1,2,3):rms?(1.0)")    #handle 1
CMC.Exec(devId,"inp:ana(1,2,3):phase?(1.0)")  #handle 2


#-- main -----------------------------------

#loop
try:
    while True:
        result = CMC.Exec(devId,"inp:ana:get?(1)")
        U_List = result.split(",")
        result = CMC.Exec(devId,"inp:ana:get?(2)")
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
except KeyboardInterrupt:
    pass

#-- close -----------------------------------
CMC.Exec(devId,"out:ana:off(zcross)")
CMC.DevUnlock(devId)
client.loop_stop()
print ("EXIT")

'''
