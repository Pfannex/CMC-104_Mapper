###############################################################################
#   IMPORT
###############################################################################
import helper as h

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
        self.infoObject = infoObject(frame)
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
        self.infoObject.pO()
        print ("=======================================================================================")
        print ("")
         
class TI():
    def __init__(self, frame):
        self.Typ =   frame[6]
        self.ref =   dictTI[self.Typ]["ref"]
        self.des =   dictTI[self.Typ]["des"]
    def pO(self):
        print ("  7 - " + h.fPL(self.Typ) + " - Type Identifier")
        print ("                                " + self.ref)
        print ("                                " + self.des)

class COT():
    def __init__(self, frame):
        self.DEZ   = frame[8] & 0b00111111
        self.long  = dictCOT[self.DEZ]["long"]
        self.short = dictCOT[self.DEZ]["short"]
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

class infoObject():
    def __init__(self, frame):
        self.DEZ =   frame[14]<<16 | frame[13]<<8 | frame[12]
        self._1 =    frame[12]
        self._2 =    frame[13]
        self._3 =    frame[14]  
        self.infoObjectElements = infoObjectElements(frame) 
    def pO(self):
        print ("    -<InfoObject>----------------------------------------------------------------------")
        print (" 13 - " + h.fPL(self._1) + " - Information Object Address (IOA) (LSB)")
        print (" 14 - " + h.fPL(self._2) + " - Information Object Address (IOA) (...)")
        print (" 15 - " + h.fPL(self._3) + " - Information Object Address (IOA) (MSB)")
        addr ="{:10,d}".format(self.DEZ)
        addr = addr.replace(",",".")
        print ("                   "+ addr + " - Information Object Address (IOA)")
        print ("    -<InfoObjectElements>--------------------------------------------------------------")
        self.infoObjectElements.pO()
        #print(self.infoObjectElements.elements)
        #print(self.infoObjectElements.elements.listIoe[1])

##############################################################################
#  IEC60870-5-104 infoObjectElements (single data information) 
###############################################################################
SE  = {"name": "SE", "longName":"Select/execute state", 
       "usedBytes":1, "bitPos": {"first":8, "last":8},
       "state": {0: "execute", 1: "select"}}
QU  = {"name": "QU", "longName":"Qualifier of Command", 
       "usedBytes":1, "bitPos": {"first":7, "last":3},
       "state": {0: "QU_UNSPECIFIED", 1: "QU_SHORTPULSE", 2: "QU_LONGPULSE", 3: "QU_PERSISTENT"}}
SCS = {"name": "SCS", "longName":"Single command state", 
       "usedBytes":1, "bitPos": {"first":1, "last":1},
       "state": {0: "SCS_OFF", 1: "SCS_ON"}}
DCS = {"name": "DCS", "longName":"Double command state", 
       "usedBytes":1, "bitPos": {"first":2, "last":1},
       "state": {0: "DCS_INDETERMINATE", 1: "DCS_OFF", 2: "DCS_ON", 3: "DCS_INDETERMINATE"}}
RCS = {"name": "RCS", "longName":"Step Command state", 
       "usedBytes":1, "bitPos": {"first":2, "last":1},
       "state": {0: "RCS_NOTALLOWED", 1: "RCS_DECREMENT", 2: "RCS_INCREMENT", 3: "RCS_NOTALLOWED"}}

BSI = {"name": "BSI", "longName":"Binary state information", 
       "usedBytes":4, "bitPos": {"first":8, "last":8},
       "state": {}}

QOIe = {"name": "QOI", "longName":"Qualifier of interrogation command", 
        "usedBytes":1, "bitPos": {"first":8, "last":8},
       "state": {0: "QOI_UNUSED", 20: "QOI_INROGEN", 21: "QOI_INRO1", 22: "QOI_INRO2"}}

###############################################################################
#   IEC60870-5-104 infoObjectElements (single data information)
###############################################################################
class sdi():
    def __init__(self, sdiDict, data):
      print("sdi init 1")
      self.name = sdiDict["name"]
      self.longName = sdiDict["longName"]
      usedBytes = sdiDict["usedBytes"]
      print("sdi init 2")
      print (self.name)
      print (usedBytes)
      print("sdi init print data")
      print (data[0])
      print("sdi init print data done")
      
      self.pStr = "       - " + self.name + " - " + self.longName
      print("sdi init done")
    def pO(self):
        print(self.pStr)
        #print(self.name)
        #print(self.pStr)


"""
    def __init__(self, sdiDict, frame):
        self.name = name
        self.pos = pos[0] + 14
        self.byteN = pos[0] + 15 
        self.frame = frame
        self.frameByte = frame[self.pos]
        self.msb = (self.frameByte & 0b11110000) >>8 
        self.lsb = (self.frameByte & 0b00001111)
        self.first = pos[2]
        self.last = pos[1]
        self.len = self.last - self.first + 1
        self.lenMSB = 4 - (8-self.last)
        self.lenLSB = self.len - self.lenMSB 
        self.bitStr = "0"*(8-self.last) + "1"*(self.len) + "0"*(self.first -1)
        self.bitMask = int(self.bitStr, 2)
        self.value = (self.frameByte & self.bitMask)>>self.first -1
        
        self.pStr = "{:3} - ".format(self.byteN)
        self.pStr += "."*(8-self.last)
        msbValue = "{0:0{1}b}".format(self.msb,self.lenMSB) if self.lenMSB != 0 else ""
        self.pStr += msbValue + " "
        lsbValue = "{0:0{1}b}".format(self.lsb, self.lenLSB) if self.lenLSB != 0 else ""
        self.pStr += lsbValue
        self.pStr += "."*(4-self.lenLSB)
                
        print ("len {}".format(self.len))
        print ("lenMSB {}".format(self.lenMSB))
        print ("lenLSB {}".format(self.lenLSB))
        
        print(self.bitStr)
        print("{:08b}".format(self.bitMask))
        print(self.frameByte)
        print(self.value)
        
        #self.pStr += "{:}"*(8-self.last)
        
        
        #self.QU  = (frame[self.pos] & 0b01111100)>>2
    def pO(self):
        print(self.pStr)
        #print (" {0} - .{1:03b} {2:02b}.. - 0x{3:02X} - {3:4} - QU (Qualifier)".format(self.pos+1, (self.QU & 0b00001100)>>4, (self.QU & 0b00001100)>>2, self.QU))
"""


###############################################################################
#   IEC60870-5-104 infoObjectElements
###############################################################################
"""
class SCO():
    def __init__(self, pos):
        self.des = "Single Command"
        self.pos = pos + 14
    def fill(self, frame):
        self.SE  = frame[self.pos]>>7
        self.QU  = (frame[self.pos] & 0b01111100)>>2
        self.SCS = (frame[self.pos] & 0b00000001)
        
        self._QU = sdi(SE, [frame[15]])
        #self.xQU = sdi("QU (Qualifier)", [1, 8, 5], frame)
        #self.aQU = sdi("QU (Qualifier)", [1, 4, 1], frame)
        #self.bQU = sdi("QU (Qualifier)", [1, 5, 4], frame)
        #self.cQU = sdi("QU (Qualifier)", [1, 6, 2], frame)
        #self.dQU = sdi("QU (Qualifier)", [1, 7, 1], frame)
    def pO(self):
        print ("    ---<SCO - Single Command>----------------------------------------------------------")
        print (" {0} - {1}... .... - 0x{1:02X} - {1:4} - SE (Select/execute state)".format(self.pos+1, self.SE))
        print (" {0} - .{1:03b} {2:02b}.. - 0x{3:02X} - {3:4} - QU (Qualifier)".format(self.pos+1, (self.QU & 0b00001100)>>4, (self.QU & 0b00001100)>>2, self.QU))
        print (" {0} - .... ...{1} - 0x{1:02X} - {1:4} - SCS (Single command state)".format(self.pos+1, self.SCS))
        print("")
        #self._QU.pO()
        #self.xQU.pO()
        #self.aQU.pO()  
        #self.bQU.pO()  
        #self.cQU.pO()  
        #self.dQU.pO()  
"""    
class DCO():
    def __init__(self):
        pass
    def fill(self, frame):
        self.SE = frame[15]>>7
        self.QU = (frame[15] & 0b01111100)>>2
        self.DCS= (frame[15] & 0b00000011)
    def pO(self):
        print ("    ---<DCO - Double Command>----------------------------------------------------------")
        print (" 16 - {0}... .... - 0x{0:02X} - {0:4} - SE (Select/execute state)".format(self.SE))
        print (" 16 - .{0:03b} {1:02b}.. - 0x{2:02X} - {2:4} - QU (Qualifier)".format((self.QU & 0b00001100)>>4, (self.QU & 0b00001100) >>2, self.QU))
        print (" 16 - .... ..{0:02b} - 0x{0:02X} - {0:4} - DCS (Double command state)".format(self.DCS))

class CP56Time2a():
    def __init__(self):
        pass
    def fill(self, frame):
        self.ms = frame[17]<<8 | frame[16]
        self.S  = int(self.ms/1000)
        self.MS = self.ms - int(self.ms/1000)*1000
        self.IV = frame[18]>>7
        self.MIN= frame[18] & 0b00111111
        self.SU = frame[19]>>7
        self.H  = frame[19] & 0b00111111
        self.DOW= frame[20]>>5
        self.D  = frame[20] & 0b00011111
        self.M  = frame[21] & 0b00001111
        self.Y  = frame[22] & 0b01111111
    def pO(self):
        print (self.ms)

#
#make generic class for Elements
#
class SCO():
    def __init__(self, frame):
        self.SE = sdi(SE, [frame[15]])
        self.QU = sdi(QU, [frame[15]])
        self.SCS = sdi(SCS, [frame[15]])
    def pO(self):
        print("    - SCO - Single Command")
        self.SE.pO()
        self.QU.pO()
        self.SCS.pO()

class QOI():
    def __init__(self, frame):
        self.QOIe = sdi(QOIe, [frame[15]])
    def pO(self):
        print("    - QOI - Qualifier of interrogation")
        self.QOIe.pO()

###############################################################################
#   IEC60870-5-104 infoObjects
###############################################################################
"""
class ti45():  
    def __init__(self):
        self.SCO = SCO(1)
    def fill(self, frame):
        self.SCO.fill(frame)
    def pO(self):
        self.SCO.pO()
    
class ti46():  
    def __init__(self):
        self.DCO = DCO()
    def fill(self, frame):
        self.DCO.fill(frame)
    def pO(self):
        self.DCO.pO()

class ti58():  
    def __init__(self):
        self.SCO = SCO(1)
        self.CP56Time2a = CP56Time2a()
    def fill(self, frame):
        self.SCO.fill(frame)
        self.CP56Time2a.fill(frame)
    def pO(self):
        self.SCO.pO()
        self.CP56Time2a.pO()
"""        

class Elements():  
    def __init__(self, frame, elementList):
        self.elementList = elementList      #[SCO, CP56Time2a]
        for element in self.elementList:
            element.__init__(self, frame)   #fill Element with frame
    def pO(self):
        for element in self.elementList:
            element.pO(self)
        
#generic InfoObjectElements
class infoObjectElements():
    def __init__(self, frame):
        type = frame[6]
        print(type)
        try:
            self.loadListOK = False
            elemetsList = dictElementList[type]             #[SCO, CP56Time2a]
            self.elements = Elements(frame, elemetsList)    #fill Elements
            self.loadListOK = True
        except BaseException as ex:
            h.logEx(ex, "infoObjectElements")
    def __repr__(self):
        return self
    def pO(self):
        if self.loadListOK:
            self.elements.pO()
        else:
            print("    ERROR - Information Object not in list")

# dictionary of TI-Classes        
#dictElementList = {45: ti45, 46: ti46, 58: ti58, 100: ti100}    
dictElementList = {45: [SCO], 100: [QOI, QOI]}    

###############################################################################
#   dictionary I-Frame type identification
###############################################################################
dictTI = {
#PROCESS ------------------------------------------------------------ 
  #Information in Monitoring Direction:
    1: {"ref":"M_SP_NA_1", "des":"Single point information"},
    2: {"ref":"M_SP_TA_1", "des":"Single point information with time tag"},
    3: {"ref":"M_DP_NA_1", "des":"Double point information"},
    4: {"ref":"M_DP_TA_1", "des":"Double point information with time tag"},
    5: {"ref":"M_ST_NA_1", "des":"Step position information"},
    6: {"ref":"M_ST_TA_1", "des":"Step position information with time tag"},
    7: {"ref":"M_BO_NA_1", "des":"Bit string of 32 bit"},
    8: {"ref":"M_BO_TA_1", "des":"Bit string of 32 bit with time tag"},
    9: {"ref":"M_ME_NA_1", "des":"Measured value, normalized value"},
    10: {"ref":"M_ME_TA_1", "des":"Measured value, normalized value with time tag"},
    11: {"ref":"M_ME_NB_1", "des":"Measured value, scaled value"},
    12: {"ref":"M_ME_TB_1", "des":"Measured value, scaled value with time tag"},
    13: {"ref":"M_ME_NC_1", "des":"Measured value, short floating point value"},
    14: {"ref":"M_ME_TC_1", "des":"Measured value, short floating point value with time tag"},
    15: {"ref":"M_IT_NA_1", "des":"Integrated totals"},
    16: {"ref":"M_IT_TA_1", "des":"Integrated totals with time tag"},
    17: {"ref":"M_EP_TA_1", "des":"Event of protection equipment with time tag"},
    18: {"ref":"M_EP_TB_1", "des":"Packed start events of protection equipment with time tag"},
    19: {"ref":"M_EP_TC_1", "des":"Packed output circuit information of protection equipment with time tag"},
    20: {"ref":"M_PS_NA_1", "des":"Packed single-point information with status change detection"},
    21: {"ref":"M_ME_ND_1", "des":"Measured value, normalized value without quality descriptor"},
    #with long time tag (7 octets)
    30: {"ref":"M_SP_TB_1", "des":"Single point information with time tag CP56Time2a"},
    31: {"ref":"M_DP_TB_1", "des":"Double point information with time tag CP56Time2a"},
    32: {"ref":"M_ST_TB_1", "des":"Step position information with time tag CP56Time2a"},
    33: {"ref":"M_BO_TB_1", "des":"Bit string of 32 bit with time tag CP56Time2a"},
    34: {"ref":"M_ME_TD_1", "des":"Measured value, normalized value with time tag CP56Time2a"},
    35: {"ref":"M_ME_TE_1", "des":"Measured value, scaled value with time tag CP56Time2a"},
    36: {"ref":"M_ME_TF_1", "des":"Measured value, short floating point value with time tag CP56Time2a"},
    37: {"ref":"M_IT_TB_1", "des":"Integrated totals with time tag CP56Time2a"},
    38: {"ref":"M_EP_TD_1", "des":"Event of protection equipment with time tag CP56Time2a"},
    39: {"ref":"M_EP_TE_1", "des":"Packed start events of protection equipment with time tag CP56time2a"},
    40: {"ref":"M_EP_TF_1", "des":"Packed output circuit information of protection equipment with time tag CP56Time2a"},
  #information in control direction:
    #without time tag
    45: {"ref":"C_SC_NA_1", "des":"Single command"},          
    46: {"ref":"C_DC_NA_1", "des":"Double command"},          
    47: {"ref":"C_RC_NA_1", "des":"Regulating step command"},          
    48: {"ref":"C_SE_NA_1", "des":"Setpoint command, normalized value"},          
    49: {"ref":"C_SE_NB_1", "des":"Setpoint command, scaled value"},          
    50: {"ref":"C_SE_NC_1", "des":"Setpoint command, short floating point value"},          
    51: {"ref":"C_BO_NA_1", "des":"Bit string 32 bit"},  
    #with long time tag (7 octets)        
    58: {"ref":"C_SC_TA_1", "des":"Single command with time tag CP56Time2a"},          
    59: {"ref":"C_DC_TA_1", "des":"Double command with time tag CP56Time2a"},          
    60: {"ref":"C_RC_TA_1", "des":"Regulating step command with time tag CP56Time2a"},          
    61: {"ref":"C_SE_TA_1", "des":"Setpoint command, normalized value with time tag CP56Time2a"},          
    62: {"ref":"C_SE_TB_1", "des":"Setpoint command, scaled value with time tag CP56Time2a"},          
    63: {"ref":"C_SE_TC_1", "des":"Setpoint command, short floating point value with time tag CP56Time2a"},          
    64: {"ref":"C_BO_TA_1", "des":"Bit string 32 bit with time tag CP56Time2a"},
       
#SYSTEM  ------------------------------------------------------------
  #information in monitor direction :
    70: {"ref":"M_EI_NA_1", "des":"End of initialization"}, 
      
  #information in control direction :
    100: {"ref":"C_IC_NA_1", "des":"(General-) Interrogation command"},               
    101: {"ref":"C_CI_NA_1", "des":"Counter interrogation command"},               
    102: {"ref":"C_RD_NA_1", "des":"Read command"},               
    103: {"ref":"C_CS_NA_1", "des":"Clock synchronization command"},               
    104: {"ref":"C_TS_NB_1", "des":"(IEC 101) Test command"},               
    105: {"ref":"C_RP_NC_1", "des":"Reset process command"},               
    106: {"ref":"C_CD_NA_1", "des":"(IEC 101) Delay acquisition command"},               
    107: {"ref":"C_TS_TA_1", "des":"Test command with time tag CP56Time2a"}, 

#PARAMETER  ---------------------------------------------------------
  #in control direction :                  
    110: {"ref":"P_ME_NA_1", "des":"Parameter of measured value, normalized value"},               
    111: {"ref":"P_ME_NB_1", "des":"Parameter of measured value, scaled value"},               
    112: {"ref":"P_ME_NC_1", "des":"Parameter of measured value, short floating point value"},               
    113: {"ref":"P_AC_NA_1", "des":"Parameter activation"},  

#FILE transfer ------------------------------------------------------
                 
    120: {"ref":"F_FR_NA_1", "des":"File ready"},               
    121: {"ref":"F_SR_NA_1", "des":"Section ready"},               
    122: {"ref":"F_SC_NA_1", "des":"Call directory, select file, call file, call section"},               
    123: {"ref":"F_LS_NA_1", "des":"Last section, last segment"},               
    124: {"ref":"F_AF_NA_1", "des":"Ack file, Ack section"},               
    125: {"ref":"F_SG_NA_1", "des":"Segment"},               
    126: {"ref":"F_DR_TA_1", "des":"Directory"},               
    127: {"ref":"F_SC_NB_1", "des":"QueryLog – Request archive file"},               
    }  

"""
M_ (monitored information), 
C_ (control information, 
P_ (parameter), 
F_ (file), 

_Nx (not time tagged), 
_Tx (time tagged), 

_xA (type A: status and normalized, with quality), 
_xB (type B: scaled, with quality), 
_xC (type C: short floating point, with quality), 
_xD (type D: normalized without quality)      
""" 
   
###############################################################################
#   dictionary Cause of Transmission (COT) values
###############################################################################
dictCOT = {
   1: {"long":"periodic, cyclic", "short":"per/cyc"},
   2: {"long":"background interrogation", "short":"back"},
   3: {"long":"spontaneous", "short":"spont"},
   4: {"long":"initialized", "short":"init"},
   5: {"long":"interrogation or interrogated", "short":"req"},
   6: {"long":"activation", "short":"act"},
   7: {"long":"confirmation activation", "short":"actcon"},
   8: {"long":"deactivation", "short":"deact"},
   9: {"long":"confirmation deactivation", "short":"deactcon"},
   10: {"long":"termination activation", "short":"actterm"},
   11: {"long":"feedback, caused by distant command", "short":"retrem"},
   12: {"long":"feedback, caused by local command", "short":"retloc"},
   13: {"long":"data transmission", "short":"file"},
   20: {"long":"interrogated by general interrogation", "short":"inrogen"},
   21: {"long":"interrogated by interrogation group 1", "short":"inro1"},
   22: {"long":"interrogated by interrogation group 2", "short":"inro2"},
   23: {"long":"interrogated by interrogation group 3", "short":"inro3"},
   24: {"long":"interrogated by interrogation group 4", "short":"inro4"},
   25: {"long":"interrogated by interrogation group 5", "short":"inro5"},
   26: {"long":"interrogated by interrogation group 6", "short":"inro6"},
   27: {"long":"interrogated by interrogation group 7", "short":"inro7"},
   28: {"long":"interrogated by interrogation group 8", "short":"inro8"},
   29: {"long":"interrogated by interrogation group 9", "short":"inro9"},
   30: {"long":"interrogated by interrogation group 10", "short":"inro10"},
   31: {"long":"interrogated by interrogation group 11", "short":"inro11"},
   32: {"long":"interrogated by interrogation group 12", "short":"inro12"},
   33: {"long":"interrogated by interrogation group 13", "short":"inro13"},
   34: {"long":"interrogated by interrogation group 14", "short":"inro14"},
   35: {"long":"interrogated by interrogation group 15", "short":"inro15x"},
   36: {"long":"interrogated by interrogation group 16", "short":"inro16"},
   37: {"long":"interrogated by counter general interrogation", "short":"reqcogen"},
   38: {"long":"interrogated by interrogation counter group 1", "short":"reqco1"},
   39: {"long":"interrogated by interrogation counter group 2", "short":"reqco2"},
   40: {"long":"interrogated by interrogation counter group 3", "short":"reqco3"},
   41: {"long":"interrogated by interrogation counter group 4", "short":"reqco4"},
   44: {"long":"type-Identification unknown", "short":"uknown_type"},
   45: {"long":"cause unknown", "short":"uknown_cause"},
   46: {"long":"ASDU address unknown", "short":"unknown_asdu_address"},
   47: {"long":"Information object address unknown", "short":"unknown_object_address"}
   }


"""
##############################################################################
#   Info Objects
###############################################################################
#PROCESS Information in Monitoring Direction ----------------------------------
#[1] Single-point information with quality descriptor 
SIQ = {"IV":0, "NT":0, "SB":0, "BL":0, "SPI":0}
#[1] Double-point information with quality descriptor [1]
DIQ = {"IV":0, "NT":0, "SB":0, "BL":0, "DPI":0}
#[4] Binary state information
BSI = {"B1":0, "B2":0, "B3":0, "B4":0}
#[4] Status and change detection
SCD = {"B1":0, "B2":0, "B3":0, "B4":0}
#[1] Quality descriptor
QDS = {"IV":0, "NT":0, "SB":0, "BL":0, "OV":0}
QDS1 = {"IV":0, "CA":0, "CY":0, "SEQ":0}
#[1] Value with transient state indication
VTI = {"TranState":0, "value":0}
#[2] Normalized value
NVA = {"norm Value":0}
#[2] Scaled value
SVA = {"scal Value":0}
#[4] Short floating point number
R32 = {"short float":0}
#[5] Binary counter reading
BCR = {"BC1":0, "BC2":0, "BC3":0, "BC4":0}

#Protection -------------------------------------------------------------------
#[1] Single event of protection equipment
SEP = {"IV":0, "NT":0, "SB":0, "BL":0, "EI":0,"ES":0}
#[1] Start events of protection equipment
SPE = {"SRD":0, "SIE":0, "SL3":0, "SL2":0, "SL1":0,"GS":0}
#[1] Output circuit information of protection equipment
OCI = {"CL3":0, "CL2":0, "CL1":0,"GC":0}
#[1] Quality descriptor for events of protection equipment
QDP = {"IV":0, "NT":0, "SB":0, "BL":0, "EI":0}

#Commands ---------------------------------------------------------------------
#[1] Single command
SCO = {"SE":0, "QU":0, "SCS":0}
#[1] Double command
DCO = {"SE":0, "QU":0, "DCS":0}
#[1] Regulating step command
RCO = {"SE":0, "QU":0, "RCS":0}

#Time -------------------------------------------------------------------------
#[7] Seven octet binary time
CP56Time2a = {"MS":0, "IV":0, "MIN":0, "SU":0, "H":0, 
           "DOW":0, "D":0, "M":0, "Y":0, "S":0}
  #1 xxxx xxxx [MS LSB] milli seconds
  #2 xxxx xxxx [MS MSB] milli seconds
  #3 x... .... [IV]     1=invalid
  #3 ..xx xxxx [MIN]    minute
  #4 x... .... [SU]     1=summer time
  #4 ...x xxxx [H]      hour
  #5 xxx. .... [DOW]    day of week
  #5 ...x xxxx [D]      day of moth
  #6 .... xxxx [M]      month
  #7 .xxx xxxx [Y]      year
  #  NIL       [S]      seconds from MS

#[3] Three octet binary time
CP24Time2a = {"MS":0, "IV":0, "MIN":0}
  #1 xxxx xxxx [MS LSB] milli seconds
  #2 xxxx xxxx [MS MSB] milli seconds
  #3 x... .... [IV]     1=invalid
  #3 ..xx xxxx [MIN]    minute
  #  NIL       [S]      seconds from MS

#[2] Two octet binary time
CP16Time2a = {"MS":0}
  #1 xxxx xxxx [MS LSB] milli seconds
  #2 xxxx xxxx [MS MSB] milli seconds

#Qualifiers -------------------------------------------------------------------
#[1] Qualifier of interrogation
QOI = {"QOIe":0}
#[1] Qualifier of counter interrogation command
QCC = {"FRZ":0, "ROT":0}
#[1] Qualifier of parameter of measured values
QPM = {"LPC":0, "POP":0, "KPA":0}
#[1] Qualifier of parameter activation
QPA = {"QPA":0}
#[1] Qualifier of reset process command
QRP = {"QRP":0}
#[1] Qualifier of command
QOC = {"QOC":0}
#[1] Qualifier of set-point command
QOS = {"QOS":0}

#File Transfer ----------------------------------------------------------------
#[1] File ready qualifier
FRQ = {}
#[1] Section ready qualifier
SRQ = {}
#[1] Select and call qualifier
SCQ = {}
#[1] Last section or segment qualifier
LSQ = {}
#[1] Acknowledge file or section qualifier
AFQ = {}
#[2] Name of file
NOF = {}
#[2] Name of section
NOS = {}
#[3] Length of file or section
LOF = {}
#[1] Length of segment
LOS = {}
#[1] Checksum
CHS = {}
#[1] Status of file
SOF = {}

#Miscellaneous ----------------------------------------------------------------
#[1] Cause of initialization
COI = {}
#[1] Fixed test bit pattern, two octets
FBP = {}

###############################################################################
#   Information Elemets group for Type Information Object
###############################################################################

InfoObjectElements = {
#PROCESS ------------------------------------------------------------ 
#Information in Monitoring Direction:

#[1] - M_SP_NA_1 - Single point information
1 : {"e1": SIQ},        
#[2] - M_SP_TA_1 - Single point information with time tag
2 : {"e1": SIQ, "e2": CP24Time2a},  
#[3] - M_DP_NA_1 - Double point information
3 : {"e1": DIQ},  
#[4] - M_DP_TA_1 - Double point information with time tag
4 : {"e1": DIQ, "e2": CP24Time2a},  
#[5] - M_ST_NA_1 - Step position information
5 : {"e1": VTI, "e2": QDS},  
#[6] - M_ST_TA_1 - Step position information with time tag
6 : {"e1": VTI, "e2": QDS, "e3": CP24Time2a},  
#[7] - M_BO_NA_1 - Bit string of 32 bit
7 : {"e1": BSI, "e2": QDS},  
#[8] - M_BO_TA_1 - Bit string of 32 bit with time tag
8 : {"e1": BSI, "e2": QDS, "e3": CP24Time2a},  
#[9] - M_ME_NA_1 - Measured value, normalized value
9 : {"e1": NVA, "e2": QDS},  
#[10] - M_ME_TA_1 - Measured value, normalized value with time tag
10 : {"e1": NVA, "e2": QDS, "e3": CP24Time2a},  
#[11] - M_ME_NB_1 - Measured value, scaled value
11 : {"e1": SVA, "e2": QDS},  
#[12] - M_ME_TB_1 - Measured value, scaled value with time tag
12 : {"e1": SVA, "e2": QDS, "e3": CP24Time2a},  
#[13] - M_ME_NC_1 - Measured value, short floating point value
13 : {"e1": R32, "e2": QDS},  
#[14] - M_ME_TC_1 - Measured value, short floating point value with time tag
14 : {"e1": R32, "e2": QDS, "e3": CP24Time2a},  
#[15] - M_IT_NA_1 - Integrated totals
15 : {"e1": BCR, "e2": QDS1},  
#[16] - M_IT_TA_1 - Integrated totals with time tag
16 : {"e1": BCR, "e2": QDS1, "e3": CP24Time2a},  
#[17] - M_EP_TA_1 - Event of protection equipment with time tag
17 : {"e1": SEP, "e2": CP16Time2a, "e3": CP24Time2a},  
#[18] - M_EP_TB_1 - Packed start events of protection equipment with time tag
18 : {"e1": SEP, "e1": QDP, "e3": CP16Time2a, "e4": CP24Time2a},  
#[19] - M_EP_TC_1 - Packed output circuit information of protection equipment with time tag
19 : {"e1": OCI, "e1": QDP, "e3": CP16Time2a, "e4": CP24Time2a},  
#[20] - M_PS_NA_1 - Packed single-point information with status change detection
20 : {"e1": SCD, "e2": QDS},  
#[21] - M_ME_ND_1 - Measured value, normalized value without quality descriptor
21 : {"e1": NVA},  
#with long time tag (7 octets)
#[30] - M_SP_TB_1 - Single point information with time tag CP56Time2a
30 : {"e1": SIQ, "e2": CP56Time2a},  
#[31] - M_DP_TB_1 - Double point information with time tag CP56Time2a
31 : {"e1": DIQ, "e2": CP56Time2a},  
#[32] - M_ST_TB_1 - Step position information with time tag CP56Time2a
32 : {"e1": VTI, "e2": QDS, "e3": CP56Time2a},  
#[33] - M_BO_TB_1 - Bit string of 32 bit with time tag CP56Time2a
33 : {"e1": BSI, "e2": QDS, "e3": CP56Time2a},  
#[34] - M_ME_TD_1 - Measured value, normalized value with time tag CP56Time2a
34 : {"e1": NVA, "e2": QDS, "e3": CP56Time2a},  
#[35] - M_ME_TE_1 - Measured value, scaled value with time tag CP56Time2a
35 : {"e1": SVA, "e2": QDS, "e3": CP56Time2a},  
#[36] - M_ME_TF_1 - Measured value, short floating point value with time tag CP56Time2a
36 : {"e1": R32, "e2": QDS, "e3": CP56Time2a},  
#[37] - M_IT_TB_1 - Integrated totals with time tag CP56Time2a
37 : {"e1": BCR, "e2": QDS1, "e3": CP56Time2a},  
#[38] - M_EP_TD_1 - Event of protection equipment with time tag CP56Time2a
38 : {"e1": SEP, "e2": CP16Time2a, "e3": CP56Time2a},  
#[39] - M_EP_TE_1 - Packed start events of protection equipment with time tag CP56time2a
39 : {"e1": SEP, "e2": QDP, "e3": CP16Time2a, "e4": CP56Time2a},  
#[40] - M_EP_TF_1 - "Packed output circuit information of protection equipment with time tag CP56Time2a
40 : {"e1": OCI, "e2": QDP, "e3": CP16Time2a, "e4": CP56Time2a},  

#information in control direction:
# #without time tag
#[45] - C_SC_NA_1 - Single command          
45 : {"e1": SCO},        
#[46] - C_DC_NA_1 - Double command         
46 : {"e1": DCO},  
#-[47] - C_RC_NA_1 - Regulating step command          
47 : {"e1": RCO},  
#-[48] - C_SE_NA_1 - Setpoint command, normalized value         
48 : {"e1": NVA, "e2": QOS},  
#-[49] - C_SE_NB_1 - Setpoint command, scaled value        
49 : {"e1": SVA, "e2": QOS},  
#-[50] - C_SE_NC_1 - Setpoint command, short floating point value     
50 : {"e1": R32, "e2": QOS},  
#-[51] - C_BO_NA_1 - Bit string 32 bit  
51 : {"e1": BSI},  

#with long time tag (7 octets)        
#[58] - C_SC_TA_1 - Single command with time tag CP56Time2a      
58 : {"e1": SCO, "e2": CP56Time2a},  
#[59] - C_DC_TA_1 - Double command with time tag CP56Time2a          
59 : {"e1": DCO, "e2": CP56Time2a},  
#-[60] - C_RC_TA_1 - Regulating step command with time tag CP56Time2a          
60 : {"e1": RCO, "e2": CP56Time2a},  
#-[61] - C_SE_TA_1 - Setpoint command, normalized value with time tag CP56Time2a          
48 : {"e1": NVA, "e2": QOS, "e3": CP56Time2a},  
#-[62] - C_SE_TB_1 - Setpoint command, scaled value with time tag CP56Time2a          
62 : {"e1": SVA, "e2": QOS, "e3": CP56Time2a},  
#-[63] - C_SE_TC_1 - Setpoint command, short floating point value with time tag CP56Time2a          
63 : {"e1": R32, "e2": QOS, "e3": CP56Time2a},  
#-[64] - C_BO_TA_1 - Bit string 32 bit with time tag CP56Time2a
64 : {"e1": BSI, "e2": CP56Time2a},  
 
#SYSTEM  ------------------------------------------------------------
#information in monitor direction :
#[70] - M_EI_NA_1 - End of initialization 
70 : {"e1": COI},  
      
#information in control direction :
#[100] - C_IC_NA_1 - (General-) Interrogation command               
100: {"e1": QOI},
#[101] - C_CI_NA_1" - Counter interrogation command               
101: {"e1": QCC},
#[102] - C_RD_NA_1 - Read command               
#[103] - C_CS_NA_1 - Clock synchronization command               
103: {"e1": CP56Time2a},        
#[104] - C_TS_NB_1 - (IEC 101) Test command               
#[105] - C_RP_NC_1 - Reset process command               
105: {"e1": QRP},
#[106] - C_CD_NA_1 - (IEC 101) Delay acquisition command               
#[107] - C_TS_TA_1 - Test command with time tag CP56Time2a 

#PARAMETER  ---------------------------------------------------------
#in control direction :                  
#[110] - P_ME_NA_1 - Parameter of measured value, normalized value               
110: {"e1": QPM},
#[111] - P_ME_NB_1 - Parameter of measured value, scaled value               
111 : {"e1": SVA, "e2": QPM},  
#[112] - P_ME_NC_1 - Parameter of measured value, short floating point value               
112 : {"e1": R32, "e2": QPM},  
#[113] - P_AC_NA_1 - Parameter activation  
113: {"e1": QPA}

#FILE transfer ------------------------------------------------------             
#[120] - F_FR_NA_1 - File ready               
#[121] - F_SR_NA_1 - Section ready               
#[122] - F_SC_NA_1 - Call directory, select file, call file, call section               
#[123] - F_LS_NA_1 - Last section, last segment               
#[124] - F_AF_NA_1 - Ack file, Ack section               
#[125] - F_SG_NA_1 - Segment               
#[126] - F_DR_TA_1 - Directory               
#[127] - F_SC_NB_1 - QueryLog – Request archive file               
}
"""            

