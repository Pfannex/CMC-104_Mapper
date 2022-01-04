#### APDU = Application Protocol Data Unit            
       [FRAME]  
#### APCI = Application Protocol Control Information  
       [Format (I,S,U), Tx/Rx-Counter]       
#### ASDU = Application Service Data Unit  
       [Typ, COT, Addressing, Info-Objects]

-------------------------------------------------------------------------------------------
### Type Identifier (TI) suppored by SITIPE AT

## Process Information in Monitoring Direction:


| TI | Type | TIME |  
| --- | --- | --- |  
|1|Single-Point Information|NONE|    
|3|Double-Point Information| |  
|5|Step position Information| |  
|7|Bitstring of 32 Bit||  
|9|Measured Value, normalized||
|11|Measured Value, scaled||
|13|Measured Value, short floating point||
|15|Integrated Totals
|20|Packed single-point Information with status change detection
|21|Measured Value, normalized without Quality descriptor 
|30|Single-Point Information|Yes, CP56Time2a|
|31|Double-Point Information 
|32|Step position Information 
|33|Bitstring of 32 Bit 
|34|Measured Value, normalized 
|35|Measured Value, scaled 
|36|Measured Value, short floating point 
|37|Integrated Totals 
|38|Event of protection equipment|Yes, CP56Time2a |
|39|Packed single-point Information with status change detection|Yes, CP56Time2a 
|40|Measured Value, normalized without Quality descriptor|Yes, CP56Time2a

Process Information in Control Direction:
TI  Type                                                            TIME
-------------------------------------------------------------------------------------------
45  Single Command                                                  NONE
46  Double Command
47  Regulating Step Command
48  Set point command, normalized value
49  Set point command, scaled value
50  Set point command, short floating point
51  Bit string of 32 bit 
58  Single Command                                                  Yes, CP56Time2a 
59  Double Command                                                  Yes, CP56Time2a 
60  Regulating Step Command                                         Yes, CP56Time2a 
61  Set point command, normalized value                             Yes, CP56Time2a
62  Set point command, scaled value                                 Yes, CP56Time2a 
63  Set point command, short floating point                         Yes, CP56Time2a 
64  Bit string of 32 bit                                            Yes, CP56Time2a

Cause of Transmission (COT)
#   cause                                                            
-------------------------------------------------------------------------------------------
0   Not used
1   Periodic, cyclic
2   Background scan
3   Spontaneous
4   Initialized
5   Request or Requested
6   Activation
7   Activation Confirmation
8   Deactivation
9   Deactivation Confirmation
11  Return information caused by a remote command
12  Return information caused by a local command
13  File Transfer
20  Interrogated by station interrogation
21 … 36   Interrogated by group1…16 interrogation
37  Requested by general counter request
38 … 41 Requested by group 1…4 counter request
44  Unknown Type Identification
45  Unknown Cause of Transmission
46  Unknown CASDU
47  Unknown IOA