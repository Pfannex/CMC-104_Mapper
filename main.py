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
import CMEngine
import IEC60870_5_104
import IEC60870_5_104_APDU as TAPDU
import helper as h
import time


import win32com.client # gget e.g. via "pip install pywin32"

cmEngine = win32com.client.Dispatch("OMICRON.CMEngAL")
deviceID = 0
myTest = "new"
import pythoncom

###############################################################################
#   CALLBACKS
###############################################################################
def timer1_callback():
    h.log("here we go every 60 seconds")
    
def timer2_callback():
    h.log("here we go every 300 seconds")

def on_IEC60870_5_104_I_Frame_GA_callback(APDU):
    pass
    #h.log("incomming {} - {}".format(APDU.ASDU.TI.ref, APDU.ASDU.TI.des))
    #h.log(APDU.ASDU.InfoObject.data[0].typ)
    #h.log(APDU.ASDU.InfoObject.address._1)

def on_IEC60870_5_104_I_Frame_received_callback(APDU):
    ioa =APDU.ASDU.InfoObject.address.DEZ
    if ioa == 1:
        cmcConnect()
        #cmc.cmcOn()
    if ioa == 2:
        cmcOn()
        #cmc.notepad()
    
    #print(APDU.ASDU.InfoObject.dataObject[0].detail[2].state)
    pass
     
###############################################################################
#   FUNCTIONS
###############################################################################

def cmcConnect():
    #pythoncom.CoInitialize()
    global cmEngine
    global deviceID
    global myTest
    myTest = "cmcConnect"
    print(myTest)
    print(cmEngine)
    print(deviceID)
    print(cmEngine.DevScanForNew(False))
    deviceList = cmEngine.DevGetList(0)    #return all associated CMCs
    deviceID = int(deviceList[0])          #first associated CMC is used - make sure only one is associated
    cmEngine.DevUnlock(deviceID)
    cmEngine.DevLock(deviceID)
    #device information
    deviceList = deviceList.split(",")
    print("Devices found: " + str(int(len(deviceList)/4)))
    print("ID :  "+deviceList[0])
    print("SER:  "+deviceList[1])
    print("Type: "+cmEngine.DeviceType(deviceID))
    print("IP:   "+cmEngine.IPAddress(deviceID))
    print("--------------------------")

########################## geht
    cmEngine.Exec(deviceID,"out:on")
    time.sleep(2)
    cmEngine.Exec(deviceID,"out:off")
    cmEngine.Exec(deviceID,"out:ana:off(zcross)")
    #cmEngine.DevUnlock(deviceID)

def cmcOn():
########################## geht nicht
    #pythoncom.CoInitialize()
    global cmEngine
    global deviceID
    global myTest
    print(myTest)

    #cmEngine.DevLock(deviceID)
    print(cmEngine)
    print(deviceID)
    cmEngine.Exec(deviceID,"out:on")
    time.sleep(2)
    cmEngine.Exec(deviceID,"out:off")
    cmEngine.Exec(deviceID,"out:ana:off(zcross)")
    #cmEngine.DevUnlock(deviceID)

###############################################################################
#   MAIN START
###############################################################################
h.start()
Server104 = IEC60870_5_104.Server(on_IEC60870_5_104_I_Frame_GA_callback,
                                  on_IEC60870_5_104_I_Frame_received_callback,
                                  "127.0.0.1", 2404)
#cmc = CMEngine.CMCControll()

t1 = h.idleTimer(60, timer1_callback)
t2 = h.idleTimer(300, timer2_callback)

###############################################################################
#   MAIN LOOP
###############################################################################

while True:
    print("c = CMC connect")
    print("o = CMC ON")
    print("q = quit")
    key = input()
    if key == "c":
        cmcConnect()
    if key == "o":
        cmcOn()
    if key == 'q':
        print("bye")
        cmEngine.DevUnlock(deviceID)
        exit()
    #cmc.handle()
    #time.sleep(10)
    pass
    
