###############################################################################
#   IEC60870-5-104 I-Frame
###############################################################################
class _APDU():
    class APCI():
        start  = 0
        length = 0
        class CF():
            _1 = 0
            _2 = 0
            _3 = 0
            _4 = 0
            Tx  = 0
            Rx  = 0
    class ASDU():
        class TI():
            Typ = 0
            ref = ""
            des = ""
        SQ = 0
        NofObjects = 0
        Test = 0
        PN   = 0
        class COT():
              DEZ   = 0
              long  = ""
              short = ""
        ORG  = 0
        class CASDU():
            DEZ = 0
            _1  = 0
            _2  = 0
        class InfoObj():
            class IOA():
                DEZ = 0
                _1  = 0
                _2  = 0
                _3  = 0
            
###############################################################################
#   dictionary I-Frame type identicikation
###############################################################################
dictTI = {
#PROCESS ------------------------------------------------------------ 
  #Information in Monitoring Direction:
    #without time tag
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








