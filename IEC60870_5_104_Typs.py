###############################################################################
#   IEC60870-5-104 I-Frame
###############################################################################
class CF():
    def __init__(self, frame):
        self._1 =  frame[2]
        self._2 =  frame[3]
        self._3 =  frame[4]
        self._4 =  frame[5]
        self.Tx  = (frame[3]<<8 | frame[2])>>1
        self.Rx  = (frame[5]<<8 | frame[4])>>1

class APCI():
    def __init__(self, frame):
        self.start =  frame[0]
        self.length = frame[1]
        self.CF =     CF(frame)
      
class TI():
    def __init__(self, frame):
        self.Typ =   frame[6]
        self.ref =   dictTI[self.Typ]["ref"]
        self.des =   dictTI[self.Typ]["des"]

class COT():
    def __init__(self, frame):
        self.DEZ   = frame[8] & 0b00111111
        self.long  = dictCOT[self.DEZ]["long"]
        self.short = dictCOT[self.DEZ]["short"]

class CASDU():
    def __init__(self, frame):
        self.DEZ =   frame[11]<<8 | frame[10]
        self._1  =   frame[10]
        self._2  =   frame[11]

class IOA():
    def __init__(self, frame):
        self.DEZ =   frame[14]<<16 | frame[13]<<8 | frame[12]
        self._1 =    frame[12]
        self._2 =    frame[13]
        self._3 =    frame[14]              

class InfoObject():
    def __init__(self, frame):
        self.IOA = IOA(frame)
        type     = frame[6]
        self.InfoObjektElements = InfoObjectElements[type]
        self.fill_InfoObjectElements(type, self.InfoObjektElements, frame)
        
    def fill_InfoObjectElements(self, type, InfoObjectElements, frame):
        IOE = InfoObjectElements
        if type == 1:
            pass
        elif type == 2:
            pass
        elif type == 45:
            IOE["e1"]["SE"] = frame[15]>>7
            IOE["e1"]["QU"] = (frame[15] & 0b01111100)>>2
            IOE["e1"]["SCS"]= (frame[15] & 0b00000001)
        elif type == 46:
            IOE["e1"]["SE"] = frame[15]>>7
            IOE["e1"]["QU"] = (frame[15] & 0b01111100)>>2
            IOE["e1"]["DCS"]= (frame[15] & 0b00000011)
        elif type == 58:
            IOE["e1"]["SE"] = frame[15]>>7
            IOE["e1"]["QU"] = (frame[15] & 0b01111100)>>2
            IOE["e1"]["SCS"]= (frame[15] & 0b00000001)
            ms = frame[17]<<8 | frame[16]
            IOE["e2"]["S"]  = int(ms/1000)
            IOE["e2"]["MS"] = ms - int(ms/1000)*1000
            IOE["e2"]["IV"] = frame[18]>>7
            IOE["e2"]["MIN"]= frame[18] & 0b00111111
            IOE["e2"]["SU"] = frame[19]>>7
            IOE["e2"]["H"]  = frame[19] & 0b00111111
            IOE["e2"]["DOW"]= frame[20]>>5
            IOE["e2"]["D"]  = frame[20] & 0b00011111
            IOE["e2"]["M"]  = frame[21] & 0b00001111
            IOE["e2"]["Y"]  = frame[22] & 0b01111111

        elif type == 100:
            IOE["e1"]["QOIe"] = frame[15]
    
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

class APDU():
        def __init__(self, frame):
            self.APCI =  APCI(frame)
            self.ASDU =  ASDU(frame)

##############################################################################
#   Info Objects
###############################################################################
#PROCESS Information in Monitoring Direction ----------------------------------
#[1] Single-point information with quality descriptor 
SIQ = {"IV":0, "NT":0, "SB":0, "BL":0, "SPI":0}
#[1] Double-point information with quality descriptor [1]
DIQ = {"IV":0, "NT":0, "SB":0, "BL":0, "DPI":0}
#[4] Binary state information
BSI = {}
#[4] Status and change detection
SCD = {}
#[1] Quality descriptor
QDS = {}
#[1] Value with transient state indication
VTI = {}
#[2] Normalized value
NVA = {}
#[2] Scaled value
SVA = {}
#[4] Short floating point number
IEEE_STD_754 = {}
#[5] Binary counter reading
BCR = {}

#Protection -------------------------------------------------------------------
#[1] Single event of protection equipment
SEP = {}
#[1] Start events of protection equipment
SPE = {}
#[1] Output circuit information of protection equipment
OCI = {}
#[1] Quality descriptor for events of protection equipment
QDP = {}

#Commands ---------------------------------------------------------------------
#[1] Single command
SCO = {"SE":0, "QU":0, "SCS":0}
#[1] Double command
DCO = {"SE":0, "QU":0, "DCS":0}
#[1] Regulating step command
RCO = {}

#Time -------------------------------------------------------------------------
#[7] Seven octet binary time
CP56T2a = {"MS":0, "IV":0, "MIN":0, "SU":0, "H":0, 
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
CP24Time2a = {}
#[2] Two octet binary time
CP16Time2a = {}

#Qualifiers -------------------------------------------------------------------
#[1] Qualifier of interrogation
QOI = {"QOIe":0}
#[1] Qualifier of counter interrogation command
QCC = {}
#[1] Qualifier of parameter of measured values
QPM = {}
#[1] Qualifier of parameter activation
QPA = {}
#[1] Qualifier of reset process command
QRP = {}
#[1] Qualifier of command
QOC = {}
#[1] Qualifier of set-point command
QOS = {}

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
2 : {"e1": SIQ, "e2": CP56T2a},  
#-[3] - M_DP_NA_1 - Double point information
3 : {"e1": DIQ},  
#[4] - M_DP_TA_1 - Double point information with time tag
#[5] - M_ST_NA_1 - Step position information
5 : {"e1": VTI, "e2": QDS},  
#[6] - M_ST_TA_1 - tep position information with time tag
#[7] - M_BO_NA_1 - Bit string of 32 bit
7 : {"e1": DIQ},  
#[8] - M_BO_TA_1 - Bit string of 32 bit with time tag
#[9] - M_ME_NA_1 - Measured value, normalized value
9 : {"e1": DIQ},  
#[10] - M_ME_TA_1 - Measured value, normalized value with time tag
#[11] - M_ME_NB_1 - Measured value, scaled value
11 : {"e1": DIQ},  
#[12] - M_ME_TB_1 - Measured value, scaled value with time tag
#[13] - M_ME_NC_1 - Measured value, short floating point value
13 : {"e1": DIQ},  
#[14] - M_ME_TC_1 - Measured value, short floating point value with time tag
#[15] - M_IT_NA_1 - Integrated totals
15 : {"e1": DIQ},  
#[16] - M_IT_TA_1 - Integrated totals with time tag
#[17] - M_EP_TA_1 - Event of protection equipment with time tag
#[18] - M_EP_TB_1 - Packed start events of protection equipment with time tag
#[19] - M_EP_TC_1 - Packed output circuit information of protection equipment with time tag
#[20] - M_PS_NA_1 - Packed single-point information with status change detection
20 : {"e1": DIQ},  
#[21] - M_ME_ND_1 - Measured value, normalized value without quality descriptor
21 : {"e1": DIQ},  
#with long time tag (7 octets)
#-[30] - M_SP_TB_1 - Single point information with time tag CP56Time2a
#-[31] - M_DP_TB_1 - Double point information with time tag CP56Time2a
#-[32] - M_ST_TB_1 - Step position information with time tag CP56Time2a
#-[33] - M_BO_TB_1 - Bit string of 32 bit with time tag CP56Time2a
#-[34] - M_ME_TD_1 - Measured value, normalized value with time tag CP56Time2a
#-[35] - M_ME_TE_1 - Measured value, scaled value with time tag CP56Time2a
#-[36] - M_ME_TF_1 - Measured value, short floating point value with time tag CP56Time2a
#-[37] - M_IT_TB_1 - Integrated totals with time tag CP56Time2a
#-[38] - M_EP_TD_1 - Event of protection equipment with time tag CP56Time2a
#-[39] - M_EP_TE_1 - Packed start events of protection equipment with time tag CP56time2a
#-[40] - M_EP_TF_1 - "Packed output circuit information of protection equipment with time tag CP56Time2a

#information in control direction:
# #without time tag
#[45] - C_SC_NA_1 - Single command          
45 : {"e1": SCO},        
#[46] - C_DC_NA_1 - Double command         
46 : {"e1": DCO},  
#-[47] - C_RC_NA_1 - Regulating step command          
#-[48] - C_SE_NA_1 - Setpoint command, normalized value         
#-[49] - C_SE_NB_1 - Setpoint command, scaled value        
#-[50] - C_SE_NC_1 - Setpoint command, short floating point value     
#-[51] - C_BO_NA_1 - Bit string 32 bit  

#with long time tag (7 octets)        
#[58] - C_SC_TA_1 - Single command with time tag CP56Time2a      
58 : {"e1": SCO, "e2": CP56T2a},  
    
#[59] - C_DC_TA_1 - Double command with time tag CP56Time2a          
59 : {"e1": DCO, "e2": CP56T2a},  
#-[60] - C_RC_TA_1 - Regulating step command with time tag CP56Time2a          
#-[61] - C_SE_TA_1 - Setpoint command, normalized value with time tag CP56Time2a          
#-[62] - C_SE_TB_1 - Setpoint command, scaled value with time tag CP56Time2a          
#-[63] - C_SE_TC_1 - Setpoint command, short floating point value with time tag CP56Time2a          
#-[64] - C_BO_TA_1 - Bit string 32 bit with time tag CP56Time2a
 
#SYSTEM  ------------------------------------------------------------
#information in monitor direction :
#70: {"ref":"M_EI_NA_1", "des":"End of initialization"}, 
      
#information in control direction :
#[100] - C_IC_NA_1 - (General-) Interrogation command               
100: {"e1": QOI}        
#[101] - C_CI_NA_1" - Counter interrogation command               
#[102] - C_RD_NA_1 - Read command               
#[103] - C_CS_NA_1 - Clock synchronization command               
#[104] - C_TS_NB_1 - (IEC 101) Test command               
#[105] - C_RP_NC_1 - Reset process command               
#[106] - C_CD_NA_1 - (IEC 101) Delay acquisition command               
#[107] - C_TS_TA_1 - Test command with time tag CP56Time2a 

#PARAMETER  ---------------------------------------------------------
#in control direction :                  
#[110] - P_ME_NA_1 - Parameter of measured value, normalized value               
#[111] - P_ME_NB_1 - Parameter of measured value, scaled value               
#[112] - P_ME_NC_1 - Parameter of measured value, short floating point value               
#[113] - P_AC_NA_1 - Parameter activation  

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








