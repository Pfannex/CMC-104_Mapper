###############################################################################
#   IMPORT
###############################################################################
import json

###############################################################################
#   config File
###############################################################################
class CFG():
    def __init__(self):
        self.autostartServer = 0
        self.autoScanDevices = 0
        self.autoLockDevices = 0
        self.file = {}
        self.read_config()
        

    def read_config(self): 
        f = open("config.json")
        #f = open("config.json")
        self.file = json.load(f)
        #print(self.file)
        
        self.autostartServer = self.file["autostartServer"]
        self.autoScanDevices = self.file["autoScanDevice"]
        self.autoLockDevices = self.file["autoLockDevices"]

        self.ct_pri = self.file["ct_pri"]
        self.ct_sec = self.file["ct_sec"]
        self.vt_pri = self.file["vt_pri"]
        self.vt_sec = self.file["vt_sec"]
        self.scaleTo = self.file["scaleTo"]
        self.ct_range = self.file["ct_range"]
        self.vt_range = self.file["vt_range"]
        f.close()

    def write_config(self):
        self.file["autostartServer"] = self.autostartServer
        self.file["autoScanDevice"] = self.autoScanDevices
        self.file["autoLockDevices"] = self.autoLockDevices

        self.file["ct_pri"] = self.ct_pri
        self.file["ct_sec"] = self.ct_sec 
        self.file["vt_pri"] = self.vt_pri 
        self.file["vt_sec"] = self.vt_sec 
        self.file["scaleTo"] = self.scaleTo 
        self.file["ct_range"] = self.ct_range 
        self.file["vt_range"] = self.vt_range  

        #print(self.file)
        out_file = open("config.json", "w")        
        #out_file = open("config.json", "w")        
        json.dump(self.file, out_file, indent = 6)
        out_file.close()
        
            
