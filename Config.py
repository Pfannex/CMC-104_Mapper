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
        self.autoconnectToFirstDevice = 0
        self.file = {}
        self.read_config()
        

    def read_config(self): 
        f = open("CMC-104_Mapper/config.json")
        self.file = json.load(f)
        print(self.file)
        
        self.autostartServer = self.file["autostartServer"]
        self.autoScanDevices = self.file["autoScanDevice"]
        self.autoConnectToFirstDevice = self.file["autoconnectToFirstDevice"]
        f.close()

    def write_config(self):
        self.file["autostartServer"] = self.autostartServer
        self.file["autoScanDevice"] = self.autoScanDevices
        self.file["autoconnectToFirstDevice"] = self.autoConnectToFirstDevice
        print(self.file)
        out_file = open("CMC-104_Mapper/config.json", "w")        
        json.dump(self.file, out_file, indent = 6)
        out_file.close()
        
            
