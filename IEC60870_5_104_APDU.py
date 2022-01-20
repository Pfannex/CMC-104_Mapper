###############################################################################
#   IMPORT
###############################################################################
import struct
import helper as h
import IEC60870_5_104_dict as d

###############################################################################
#   IEC60870-5-104 I-Frame
###############################################################################
#<APDU>------------------------------------
class APDU():
    def __init__(self, frame):
        self.APCI =  APCI(frame)
        self.ASDU =  ASDU(frame)
    def pO(self):
        print ("")
        print ("=<APDU>================================================================================")
        self.APCI.pO()
        self.ASDU.pO()
        
#----<APCI>------------------------------------
class APCI():
    def __init__(self, frame):
        self.start =  frame[0]
        self.length = frame[1]
        self.CF =     CF(frame)
    def pO(self):
        print ("  -<APCI>------------------------------------------------------------------------------")
        print ("  # - 8765 4321 - 0x   -  DEZ - Information")
        print ("  .....................................................................................")
        print ("  1 - " + h.fPL(self.start) + " - start")
        print ("  2 - " + h.fPL(self.length) + " - APDU lenght")
        print ("  3 - .... ...0 - 0x00 -    0 - Format = I")

class CF():
    def __init__(self, frame):
        self._1 =  frame[2]
        self._2 =  frame[3]
        self._3 =  frame[4]
        self._4 =  frame[5]
        self.Tx  = (frame[3]<<8 | frame[2])>>1
        self.Rx  = (frame[5]<<8 | frame[4])>>1
    def pO(self):
        print ("  3 - " + h.fPL(self.CF._1) + " - CF1")
        print ("  4 - " + h.fPL(self.CF._2) + " - CF2")
        print ("  5 - " + h.fPL(self.CF._3) + " - CF3")
        print ("  6 - " + h.fPL(self.CF._4) + " - CF4")
        print ("                         {0:4} - Tx count".format(self.Tx))
        print ("                         {0:4} - Rx count".format(self.Rx))
    
#----<ASDU>------------------------------------
class ASDU():
    def __init__(self, frame):
        self.TI =         TI(frame)
        self.SQ =         frame[7]>>7
        self.NofObjects = frame[7] & 0b01111111
        self.Test =       frame[8]>>7
        self.PN =         (frame[8] & 0b01000000)>>6
        self.COT =        COT(frame)
        self.ORG =        frame[9]
        self.CASDU =      CASDU(frame)
        self.InfoObject = InfoObject(frame)
    def pO(self):
        print ("  -<ASDU>------------------------------------------------------------------------------")
        print ("  # - 8765 4321 - 0x   -  DEZ - Information")
        print ("  .....................................................................................")
        self.TI.pO()
        print ("      ---------------------------------------------------------------------------------")
        print ("  8 - {0}... .... - 0x{0:02X} - {0:4} - SQ (Structure Qualifier)".format(self.SQ))
        print ("  8 - .{0:03b} {1:04b} - 0x{2:02X} - {2:4} - Number of objects".format(self.NofObjects>>4, self.NofObjects&0b00001111, self.NofObjects))
        print ("  9 - {0}... .... - 0x{0:02X} - {0:4} - T (Test)".format(self.Test))
        print ("  9 - .{0}.. .... - 0x{0:02X} - {0:4} - P/N (positive/negative)".format(self.PN))
        self.COT.pO()
        print (" 10 - " + h.fPL(self.ORG) + " - Originator Address (ORG)")
        print ("      ---------------------------------------------------------------------------------")
        self.CASDU.pO()
        self.InfoObject.pO()
        print ("=======================================================================================")
        print ("")
         
class TI():
    def __init__(self, frame):
        self.Typ =   frame[6]
        self.ref =   d.ti[self.Typ]["ref"]
        self.des =   d.ti[self.Typ]["des"]
    def pO(self):
        print ("  7 - " + h.fPL(self.Typ) + " - Type Identifier")
        print ("                                " + self.ref)
        print ("                                " + self.des)

class COT():
    def __init__(self, frame):
        self.DEZ   = frame[8] & 0b00111111
        self.long  = d.cot[self.DEZ]["long"]
        self.short = d.cot[self.DEZ]["short"]
    def pO(self):
        print ("  9 - ..{0:02b} {1:04b} - 0x{2:02X} - {2:4} - Cause of transmission (COT)".format(self.DEZ>>4, self.DEZ&0b00001111, self.DEZ))
        print ("                                " + self.long + " - " + self.short)

class CASDU():
    def __init__(self, frame):
        self.DEZ =   frame[11]<<8 | frame[10]
        self._1  =   frame[10]
        self._2  =   frame[11]
    def pO(self):
        print (" 11 - " + h.fPL(self._1) + " - CASDU1 (LSB) Address Field (Common Address of ASDU)")
        print (" 12 - " + h.fPL(self._2) + " - CASDU2 (MSB) Address Field (Common Address of ASDU)")
        addr ="{:6,d}".format(self.DEZ)
        addr = addr.replace(",",".")
        print ("                       "+ addr +" - CASDU Address Field (Common Address of ASDU)")

class InfoObject():
    def __init__(self, frame):
        self.address = Address(frame)
        type = frame[6]
        elements = []  #all InfoObjectElements
        self.dataObject = [] #data details
        try:
            self.loadListOK = False
            elements = d.infoObjects[type]  
            
            # TIME-ELEMENTS not working
            
            byteCounter = 15
            for i in range(len(elements)): #e.g. 61: [nva, qos, cp56Time2a],
                usedBytes = elements[i][1][0]["usedBytes"]
                infoBytes = []
                for j in range(usedBytes):
                    infoBytes.append(frame[byteCounter])
                    byteCounter += 1
                    
                #fill detailObject    
                self.dataObject.append(Type(elements[i], infoBytes))  
            self.loadListOK = True
        except BaseException as ex:
            h.logEx(ex, "infoObject")
        
    def pO(self):
        print ("    -<InfoObject>----------------------------------------------------------------------")
        print ("    ---<InfoObjectAddress>-------------------------------------------------------------")
        self.address.pO()
        if self.loadListOK:
            print ("    ---<InfoObjectData>----------------------------------------------------------------")
            
            for i in range(len(self.dataObject)):
                print("        {} - {}".format(self.dataObject[i].name, self.dataObject[i].longName))
                for j in range(len(self.dataObject[i].detail)):
                    state = ""
                    if self.dataObject[i].detail[j].state != "":
                        state = " - "
                        state += self.dataObject[i].detail[j].state
                    print("          - {}: {}{}".format(self.dataObject[i].detail[j].name,
                                                           self.dataObject[i].detail[j].value,
                                                           state))
        else:
            print("    ERROR - Information Object not in list")

class Type():
    def __init__(self, data, infoBytes):
        self.name = data[0][0]
        self.longName = data[0][1]
        detailList = data[1]
        self.detail = []
        for i in range(len(detailList)):
            self.detail.append(Detail(detailList[i], infoBytes))

class Address():
    def __init__(self, frame):
        self.DEZ =   frame[14]<<16 | frame[13]<<8 | frame[12]
        self._1 =    frame[12]
        self._2 =    frame[13]
        self._3 =    frame[14]  
    def pO(self):
        print (" 13 - " + h.fPL(self._1) + " - Information Object Address (IOA1) (LSB)")
        print (" 14 - " + h.fPL(self._2) + " - Information Object Address (IOA2) (...)")
        print (" 15 - " + h.fPL(self._3) + " - Information Object Address (IOA3) (MSB)")
        addr ="{:10,d}".format(self.DEZ)
        addr = addr.replace(",",".")
        print ("                   "+ addr + " - Information Object Address (IOA)")

# split detailInformation from Byte
class Detail():
    def __init__(self, data, infoBytes):
        #frameByte = frame[15]
        #print("len(infoBytes): {}".format(len(infoBytes)))
        self.name = data["name"]
        #print (self.name)
        self.longName = data["longName"]
        usedBytes = data["usedBytes"]
        firstBit =  data["bitPos"]["first"]
        #print(firstBit)
        lastBit =  data["bitPos"]["last"]
        #print(lastBit)
        detailLen = firstBit - lastBit + 1
        #print(detailLen)
        bitStr = "0"*(7-firstBit) + "1"*(detailLen) + "0"*(lastBit)
        #print(bitStr)
        bitMask = int(bitStr, 2)
        
        if usedBytes == 1:
            self.value = (infoBytes[0] & bitMask)>>lastBit
            #print(self.value)
        if usedBytes == 2:
            self.value = int.from_bytes(infoBytes, byteorder='little', signed=False)
        if usedBytes == 3:
            self.value = int.from_bytes(infoBytes, byteorder='little', signed=False)
        if usedBytes == 4:
            if self.name == "BSI":
                self.value = "{:08b}-{:08b}-{:08b}-{:08b}".format(infoBytes[0],
                                                                  infoBytes[1],
                                                                  infoBytes[2],
                                                                  infoBytes[3])
            elif self.name == "R32":
                [data] = struct.unpack("f", bytearray(infoBytes))
                self.value = data
            else:
                self.value = "NIL"
        self.state = ""
        try:
            #print (data["state"][self.value])
            self.state = data["state"][self.value]
        except BaseException as ex:
            pass
        
