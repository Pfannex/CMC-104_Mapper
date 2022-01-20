###############################################################################
#   CMEngine connector
###############################################################################
import helper as h
import win32com.client

class CMEngine():
    def __init__(self):   
        h.log("scan for CMC-Devices")
        self.device_locked = False
        self.cm_engine = win32com.client.Dispatch("OMICRON.CMEngAL")
        self.ana = {"v": [[0, 0, 0],      #Amplitude
                         [0, -120, 120], #Phase
                         [50, 50, 50]],  #Frequency
                    "i": [[0, 0, 0],      #Amplitude
                         [0, -120, 120], #Phase
                         [50, 50, 50]]   #Frequency
                    }    
        if str(self.cm_engine.DevScanForNew(False)) == "None":
            h.log_error("No CMC devices found!")
            return
        else:
            device_list = self.cm_engine.DevGetList(0)  #return all associated CMCs
            h.log("Devices found: " + str(int(len(device_list)/4)))
            self.device_id = int(device_list[0])        #first associated CMC is used - make sure only one is associated

            self.cm_engine.DevUnlock(self.device_id)
            self.cm_engine.DevLock(self.device_id)
            self.device_locked = True
            #device information
            device_list = device_list.split(",")
            h.log("ID :  "+device_list[0])
            h.log("SER:  "+device_list[1])
            h.log("Type: "+self.cm_engine.DeviceType(self.device_id))
            h.log("IP:   "+self.cm_engine.IPAddress(self.device_id))
            h.log("--------------------------")

    def set_command(self, info_object):
        ioa_1 = info_object.address._1
        ioa_2 = info_object.address._2
        ioa_3 = info_object.address._3
        info_detail_typ = info_object.dataObject[0].name  #SCO / R32
        
        if info_object.address.DEZ == 1 and info_detail_typ == "SCO":
            self.power(info_object.dataObject[0].detail[2].state)
        if ioa_1 == 1 and ioa_2 in range(1,7) and ioa_3 in range (1,4) and info_detail_typ == "R32":
            value = info_object.dataObject[0].detail[0].value
            self.set_output(ioa_1, ioa_2, ioa_3, value)

        #set power:
        #IOA1           | IOA2       | IOA3            | value
        # 1             | 0          | 0               | SCS_ON / SCS_OFF
        #set output:
        #IOA1-Generator | IOA2-Phase | IOA3-parameter  | value
        # 1             | 1: UL1     | 1: Amplitude    | R32
        #               | 2: UL2     | 2: Phase        | R32
        #               | 3: UL3     | 3: Frequency    | R32
        #               | 4: IL1     |                 | R32
        #               | 5: IL2     |                 | R32 
        #               | 6: IL3     |                 | R32 

    def cmd(self, cmd):
        print("cmd= " + cmd)
        if self.device_locked:
            self.cm_engine.Exec(self.devId,cmd)
        else:
            h.log_error("No CMC connected!")

    def power(self, command):
        if command == "SCS_ON":
            self.cmd("out:on")
        else:  
            self.cmd("out:off")
            self.cmd("out:ana:off(zcross)")
            
    def set_output(self, generator, phase, parameter, value):
        print("generator: {}".format(generator))
        print("phase: {}".format(phase))
        print("parameter: {}".format(parameter))
        print("value: {}".format(value))

        triple = "v" if phase in range(0,4) else "i"
        ui_phase = phase if triple == "v" else phase - 3

        self.ana[triple][parameter-1][ui_phase-1] = value

        cmd = "out:{}({}:{}):".format(triple, generator, ui_phase)

        for _phase in range(1,3):
            cmd += "a("{});
            for _parameter in range(1,3):
                self.ana["v"][_parameter][ui_phase-1]

        self.cmd(cmd)
        #self.cm_engine(devId,"out:v(1:1):a(10);p(0);f(50)")	
        #self.cm_engine(devId,"out:v(1:2):a(10);p(-120);f(50)")	
        #self.cm_engine(devId,"out:v(1:3):a(10);p(120);f(50)")	
 

#--- Start up -----------------------------------------------------------------
def start():
    h.log (__name__+ " start")

#--- update  ------------------------------------------------------------------
def handle():
    h.log (__name__ + "handle")



