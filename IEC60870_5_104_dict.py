##############################################################################
#  IEC60870-5-104 infoObjectElements data detail information
###############################################################################
#Time informations
ms   = {"name": "MS", "longName":"Milli Second", 
        "usedBytes":2, "bitPos": {"first":7, "last":0}}
min  = {"name": "MIN", "longName":"Minute", 
        "usedBytes":1, "bitPos": {"first":5, "last":0}}
su   = {"name": "SU", "longName":"Summer Time", 
        "usedBytes":1, "bitPos": {"first":7, "last":7},
        "state": {0: "normal time", 1: "summer time"}}
h    = {"name": "H", "longName":"Hour", 
        "usedBytes":1, "bitPos": {"first":4, "last":0}}
dow  = {"name": "DOW", "longName":"Day of Week", 
        "usedBytes":1, "bitPos": {"first":7, "last":5}}
d    = {"name": "D", "longName":"Day", 
        "usedBytes":1, "bitPos": {"first":4, "last":0}}
m    = {"name": "M", "longName":"Month", 
        "usedBytes":1, "bitPos": {"first":3, "last":0}}
y    = {"name": "Y", "longName":"Year", 
        "usedBytes":1, "bitPos": {"first":6, "last":0}}

#Quality descriptor
iv   = {"name": "IV", "longName":"Invalid quality flag", 
        "usedBytes":1, "bitPos": {"first":7, "last":7},
        "state": {0: "valid", 1: "invalid"}}
nt   = {"name": "NT", "longName":"Topical quality flag", 
        "usedBytes":1, "bitPos": {"first":6, "last":6},
        "state": {0: "topical", 1: "not topical"}}
sb   = {"name": "SB", "longName":"Substituted quality flag", 
        "usedBytes":1, "bitPos": {"first":5, "last":5},
        "state": {0: "not substituted", 1: "substituted"}}
bl   = {"name": "BL", "longName":"Blocked quality flag", 
        "usedBytes":1, "bitPos": {"first":4, "last":4},
        "state": {0: "not blocked", 1: "blocked"}}
ov   = {"name": "OV", "longName":"Overflow quality flag", 
        "usedBytes":1, "bitPos": {"first":0, "last":0},
        "state": {0: "no overflow", 1: "overflow"}}
ca   = {"name": "CA", "longName":"Adjusted flag", 
        "usedBytes":1, "bitPos": {"first":6, "last":6},
        "state": {0: "Counter was not adjusted", 1: "Counter was adjusted"}}
cy   = {"name": "CY", "longName":"Carry flag", 
        "usedBytes":1, "bitPos": {"first":5, "last":5},
        "state": {0: "no carry", 1: "carry"}}
el   = {"name": "EL", "longName":"Elapsed flag", 
        "usedBytes":1, "bitPos": {"first":3, "last":3},
        "state": {0: "Elapsed time valid", 1: "Elapsed time not valid"}}
es   = {"name": "ES", "longName":"Event state (single event of protection equipment)", 
        "usedBytes":1, "bitPos": {"first":1, "last":0},
        "state": {0: "ES_INDETERMINATE", 1: "ES_OFF",
                  2: "ES_ON", 3: "ES_INDETERMINATE"}}

#Value Information
spi  = {"name": "SPI", "longName":"Single-point information", 
        "usedBytes":1, "bitPos": {"first":0, "last":0},
        "state": {0: "SPI_OFF", 1: "SPI_ON"}}
dpi  = {"name": "DPI", "longName":"Double-point information", 
        "usedBytes":1, "bitPos": {"first":1, "last":0},
        "state": {0: "DPI_INDETERMINATE", 1: "DPI_OFF",
                  2: "DPI_ON", 3: "DPI_INDETERMINATE"}}
vtiD = {"name": "VTI", "longName":"Value with transient state indication", 
        "usedBytes":1, "bitPos": {"first":6, "last":0}}
ts   = {"name": "TS", "longName":"Transient state", 
        "usedBytes":1, "bitPos": {"first":7, "last":7},
        "state": {0: "equipment is not in transient state", 
                  1: "equipment is in transient state"}}
bsiD = {"name": "BSI", "longName":"Binary state information", 
        "usedBytes":4, "bitPos": {"first":7, "last":0}}
nvaD = {"name": "NVA", "longName":"Normalized value", 
        "usedBytes":2, "bitPos": {"first":7, "last":0}}
svaD = {"name": "SVA", "longName":"Scaled value", 
        "usedBytes":2, "bitPos": {"first":7, "last":0}}
r32  = {"name": "R32", "longName":"Short floating point value", 
        "usedBytes":4, "bitPos": {"first":7, "last":0}}
bcr  = {"name": "BCR", "longName":"Binary counter reading", 
        "usedBytes":4, "bitPos": {"first":7, "last":0}}

#Command Information
se   = {"name": "SE", "longName":"Select/execute state", 
        "usedBytes":1, "bitPos": {"first":7, "last":7},
        "state": {0: "execute", 1: "select"}}
qu   = {"name": "QU", "longName":"Qualifier of Command", 
        "usedBytes":1, "bitPos": {"first":6, "last":2},
        "state": {0: "QU_UNSPECIFIED", 1: "QU_SHORTPULSE", 
                  2: "QU_LONGPULSE", 3: "QU_PERSISTENT"}}
scs  = {"name": "SCS", "longName":"Single command state", 
        "usedBytes":1, "bitPos": {"first":0, "last":0},
        "state": {0: "SCS_OFF", 1: "SCS_ON"}}
dcs  = {"name": "DCS", "longName":"Double command state", 
        "usedBytes":1, "bitPos": {"first":1, "last":0},
        "state": {0: "DCS_INDETERMINATE", 1: "DCS_OFF", 
                  2: "DCS_ON", 3: "DCS_INDETERMINATE"}}
rcs  = {"name": "RCS", "longName":"Step Command state", 
        "usedBytes":1, "bitPos": {"first":1, "last":0},
        "state": {0: "RCS_NOTALLOWED", 1: "RCS_DECREMENT", 
                  2: "RCS_INCREMENT", 3: "RCS_NOTALLOWED"}}
ql   = {"name": "QL", "longName":"Qualifier of set-point command", 
        "usedBytes":1, "bitPos": {"first":6, "last":0},
        "state": {0: "QL_DEFAULT"}}
tp   = {"name": "tp", "longName":"Test Pattern", 
        "usedBytes":2, "bitPos": {"first":7, "last":0}}

#System Information
lpc  = {"name": "LPC", "longName":"Local parameter change flag", 
        "usedBytes":1, "bitPos": {"first":7, "last":7},
        "state": {0: "No change", 1: "Changed"}}
coi  = {"name": "COI", "longName":"Cause of initialization", 
        "usedBytes":1, "bitPos": {"first":6, "last":0},
        "state": {0: "COI_LOCAL_POWER_ON", 1: "COI_LOCAL_MANUAL_RESET",
                  2: "COI_REMOTE_RESET"}}
qoiD = {"name": "QOI", "longName":"Qualifier of interrogation command", 
        "usedBytes":1, "bitPos": {"first":7, "last":0},
        "state": {0: "QOI_UNUSED", 20: "QOI_INROGEN", 
                 21: "QOI_INRO1", 22: "QOI_INRO2"}}
frz   = {"name": "FRZ", "longName":"Freeze/reset qualifier of counter interrogation command", 
        "usedBytes":1, "bitPos": {"first":7, "last":6},
        "state": {0: "FRZ_READ", 1: "FRZ_FREEZE",
                  2: "FRZ_FREEZE_AND_RESET", 3: "FRZ_RESET"}}
rqt  = {"name": "RQT", "longName":"Request qualifier of counter interrogation command", 
        "usedBytes":1, "bitPos": {"first":7, "last":6},
        "state": {0: "RQT_NONE", 1: "RQT_REQCO1",
                  2: "RQT_REQCO2", 3: "RQT_REQCO3",
                  4: "RQT_REQCO4", 5: "RQT_REQCOGEN"}}
qrp  = {"name": "QRP", "longName":"Qualifier of reset process command", 
        "usedBytes":1, "bitPos": {"first":7, "last":0},
        "state": {0: "QRP_UNUSED", 1: "QRP_GENERAL",
                  2: "QRP_TTEVENTS"}}

#Protection Equipment Information
srd  = {"name": "SRD", "longName":"", 
        "usedBytes":1, "bitPos": {"first":5, "last":5},
        "state": {0: "SRD_OFF", 1: "SRD_ON"}}
sie  = {"name": "SIE", "longName":"", 
        "usedBytes":1, "bitPos": {"first":4, "last":4},
        "state": {0: "SIE_OFF", 1: "SIE_ON"}}
sl3  = {"name": "SL3", "longName":"", 
        "usedBytes":1, "bitPos": {"first":3, "last":3},
        "state": {0: "SL3_OFF", 1: "SL3_ON"}}
sl2  = {"name": "SL2", "longName":"", 
        "usedBytes":1, "bitPos": {"first":2, "last":2},
        "state": {0: "SL2_OFF", 1: "SL2_ON"}}
sl1  = {"name": "SL1", "longName":"", 
        "usedBytes":1, "bitPos": {"first":1, "last":1},
        "state": {0: "SL1_OFF", 1: "SL1_ON"}}
gs  = {"name": "GS", "longName":"", 
        "usedBytes":1, "bitPos": {"first":0, "last":0},
        "state": {0: "GS_OFF", 1: "GS_ON"}}
cl3  = {"name": "CL3", "longName":"", 
        "usedBytes":1, "bitPos": {"first":3, "last":3},
        "state": {0: "CL3_OFF", 1: "CL3_ON"}}
cl2  = {"name": "CL2", "longName":"", 
        "usedBytes":1, "bitPos": {"first":2, "last":2},
        "state": {0: "CL2_OFF", 1: "CL2_ON"}}
cl1  = {"name": "CL1", "longName":"", 
        "usedBytes":1, "bitPos": {"first":1, "last":1},
        "state": {0: "CL1_OFF", 1: "CL1_ON"}}
gc   = {"name": "GC", "longName":"", 
        "usedBytes":1, "bitPos": {"first":0, "last":0},
        "state": {0: "GC_OFF", 1: "GC_ON"}}
scdD = {"name": "SCD", "longName":"Status and status change detection", 
        "usedBytes":4, "bitPos": {"first":7, "last":0}}

#Parameter loading/activation
lpc  = {"name": "LPC", "longName":"", 
        "usedBytes":1, "bitPos": {"first":7, "last":7}}
pop  = {"name": "POP", "longName":"", 
        "usedBytes":1, "bitPos": {"first":6, "last":6}}
kpa  = {"name": "KPA", "longName":"Kind of parameter", 
        "usedBytes":1, "bitPos": {"first":5, "last":0},
        "state": {0: "KPA_UNUSED", 1: "KPA_THRESH",
                  2: "KPA_FILTER", 3: "KPA_LOLIMIT",
                  4: "KPA_HILIMIT"}}
qpaD  = {"name": "QPA", "longName":"Qualifier of parameter activation", 
        "usedBytes":1, "bitPos": {"first":7, "last":0},
        "state": {0: "QPA_UNUSED", 1: "QPA_GENERAL",
                  2: "QPA_OBJECT", 3: "QPA_TRANSMISSION"}}

###############################################################################
#  IEC60870-5-104 infoObjectElements data information
###############################################################################   
#PROCESS Information in Monitoring Direction ----------------------------------
#[1] Single-point information with quality descriptor 
siq = [["SIQ", "Single-point information with quality descriptor", {"usedBytes":1}],
       [iv, nt, sb, bl, spi]]
#[1] Double-point information with quality descriptor [1]
#DIQ = {"IV":0, "NT":0, "SB":0, "BL":0, "DPI":0}
#[4] Binary state information
bsi = [["BSI", "Binary state information", {"usedBytes":4}],
       [bsiD]]
#[4] Status and change detection
#SCD = {"B1":0, "B2":0, "B3":0, "B4":0}
#[1] Quality descriptor
#QDS = {"IV":0, "NT":0, "SB":0, "BL":0, "OV":0}
#QDS1 = {"IV":0, "CA":0, "CY":0, "SEQ":0}
#[1] Value with transient state indication
#VTI = {"TranState":0, "value":0}
#[2] Normalized value
nva = [["NVA", "Normalized value", {"usedBytes":2}],
       [nvaD]]
#[2] Scaled value
sva = [["SVA", "Scaled value", {"usedBytes":2}],
       [svaD]]
#[4] Short floating point number
r32 = [["R32", "Short floating point number", {"usedBytes":4}],
       [r32]]
#[5] Binary counter reading
#BCR = {"BC1":0, "BC2":0, "BC3":0, "BC4":0}

#Protection -------------------------------------------------------------------
#[1] Single event of protection equipment
#SEP = {"IV":0, "NT":0, "SB":0, "BL":0, "EI":0,"ES":0}
#[1] Start events of protection equipment
#SPE = {"SRD":0, "SIE":0, "SL3":0, "SL2":0, "SL1":0,"GS":0}
#[1] Output circuit information of protection equipment
#OCI = {"CL3":0, "CL2":0, "CL1":0,"GC":0}
#[1] Quality descriptor for events of protection equipment
#QDP = {"IV":0, "NT":0, "SB":0, "BL":0, "EI":0}

#Commands ---------------------------------------------------------------------
#[1] Single command
sco = [["SCO", "Single command", {"usedBytes":1}],
       [se, qu, scs]]
#[1] Double command
dco = [["DCO", "Double command", {"usedBytes":1}],
       [se, qu, dcs]]
#[1] Regulating step command
rco = [["RCO", "Regulating step command", {"usedBytes":1}],
       [se, qu, rcs]]

#Time -------------------------------------------------------------------------
#[7] Seven octet binary time
cp56Time2a = [["CP56Time2a", "Seven octets binary time tag", {"usedBytes":7}],
              [ms, iv, min, su, h, dow, d, m, y]]
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
#CP24Time2a = {"MS":0, "IV":0, "MIN":0}
  #1 xxxx xxxx [MS LSB] milli seconds
  #2 xxxx xxxx [MS MSB] milli seconds
  #3 x... .... [IV]     1=invalid
  #3 ..xx xxxx [MIN]    minute
  #  NIL       [S]      seconds from MS

#[2] Two octet binary time
#CP16Time2a = {"MS":0}
  #1 xxxx xxxx [MS LSB] milli seconds
  #2 xxxx xxxx [MS MSB] milli seconds

#Qualifiers -------------------------------------------------------------------
#[1] Qualifier of interrogation
qoi = [["QOI", "Qualifier of Interrogation command", {"usedBytes":1}],
       [qoiD]]
#[1] Qualifier of counter interrogation command
#QCC = {"FRZ":0, "ROT":0}
#[1] Qualifier of parameter of measured values
#QPM = {"LPC":0, "POP":0, "KPA":0}
#[1] Qualifier of parameter activation
#QPA = {"QPA":0}
#[1] Qualifier of reset process command
#QRP = {"QRP":0}
#[1] Qualifier of command
#QOC = {"QOC":0}
#[1] Qualifier of set-point command
qos = [["QOS", "Qualifier of set-point command", {"usedBytes":1}],
       [se, ql]]

#File Transfer ----------------------------------------------------------------
#[1] File ready qualifier
#FRQ = {}
#[1] Section ready qualifier
#SRQ = {}
#[1] Select and call qualifier
#SCQ = {}
#[1] Last section or segment qualifier
#LSQ = {}
#[1] Acknowledge file or section qualifier
#AFQ = {}
#[2] Name of file
#NOF = {}
#[2] Name of section
#NOS = {}
#[3] Length of file or section
#LOF = {}
#[1] Length of segment
#LOS = {}
#[1] Checksum
#CHS = {}
#[1] Status of file
#SOF = {}

#Miscellaneous ----------------------------------------------------------------
#[1] Cause of initialization
#COI = {}
#[1] Fixed test bit pattern, two octets
#FBP = {}

###############################################################################
#  IEC60870-5-104 infoObjects in Type Identifyer data groups
###############################################################################   
infoObjects = {
     1: [siq], 
     2: [siq, cp56Time2a], 
    30: [siq, cp56Time2a], 
  
    45: [sco], 
    46: [dco],
    47: [rco],
    48: [nva, qos],
    49: [sva, qos],
    50: [r32, qos],
    51: [bsi],
    
    58: [sco, cp56Time2a],
    59: [dco, cp56Time2a],
    60: [rco, cp56Time2a],
    61: [nva, qos, cp56Time2a],
    62: [sva, qos, cp56Time2a],
    63: [r32, qos, cp56Time2a],
    64: [bsi, cp56Time2a],
    
   100: [qoi] 
    }

###############################################################################
#   dictionary I-Frame type identification
###############################################################################
ti = {
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
#   dictionary Cause of Transmission (COT) 
###############################################################################
cot = {
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


