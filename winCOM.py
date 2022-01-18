import time
import win32com.client # gget e.g. via "pip install pywin32"

cmEngine = win32com.client.Dispatch("OMICRON.CMEngAL")
deviceID = 0
myTest = "new"

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
    print(cmEngine)
    print(deviceID)
    #cmEngine.DevLock(deviceID)
    cmEngine.Exec(deviceID,"out:on")
    time.sleep(2)
    cmEngine.Exec(deviceID,"out:off")
    cmEngine.Exec(deviceID,"out:ana:off(zcross)")
    #cmEngine.DevUnlock(deviceID)

while 1:
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
