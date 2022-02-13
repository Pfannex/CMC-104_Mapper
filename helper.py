###############################################################################
#   TOOLS
###############################################################################
import sys
import traceback
import time
from datetime import datetime
import threading
import logging

###############################################################################
#   DECLARATION
###############################################################################
class idleTimer(threading.Thread):
    def __init__(self, time, callback):
        self.time = time
        self.callback = callback
        threading.Thread.__init__(self)
        self.running = True
        self.start()
    def run(self):
        while self.running:
            self.callback()
            time.sleep(self.time)
    def stop(self):
        self.running = False
        
###############################################################################
#   FUNCTIONS
###############################################################################

#--- Start up -----------------------------------------------------------------
#def start():
#    log (__name__+ " start")
    
#--- update  ------------------------------------------------------------------
#def handle():
#    log (__name__ + " handle")
    
#--- logging  -----------------------------------------------------------------
def ts(source):
    dt = datetime.now()
    dt_str = "{:02,d}:{:02,d}:{:02,d}.{:03.0f}".format(dt.hour, dt.minute, dt.second, dt.microsecond/1000.0)
    if source == "":
        return ""
    if source == "-":
        return "{} - {} - ".format(dt_str, "      ")
    if source == "i":
        return "{} - {} - ".format(dt_str, "INFO  ")
    if source == "e":
        return "{} - {} - ".format(dt_str, "ERROR ")
    if source == "s":
        return "{} - {} - ".format(dt_str, "Server")
    if source == "104":
        return "{} - {} - ".format(dt_str, "IEC104")
    if source == "cmc":
        return "{} - {} - ".format(dt_str, "CMC   ")
    if source == "apdu":
        return "{} - {} - ".format(dt_str, "APDU  ")

def log(msg):
    format = "%(asctime)s - %(levelname)s - %(message)s"
    logging.basicConfig(format=format, level=logging.INFO)
    logging.info (msg)
def log_error(msg):
    format = "%(asctime)s - %(levelname)s - %(message)s"
    logging.basicConfig(format=format, level=logging.ERROR)
    logging.error (msg)
    
def logEx(ex, inClass):
    # Get current system exception
    ex_type, ex_value, ex_traceback = sys.exc_info()
    # Extract unformatter stack traces as tuples
    trace_back = traceback.extract_tb(ex_traceback)
    # Format stacktrace
    stack_trace = list()
    for trace in trace_back:
        stack_trace.append("File : %s , Line : %d, Func.Name : %s, Message : %s" % (trace[0], trace[1], trace[2], trace[3]))
    log_error("type:     %s " % ex_type.__name__)
    log_error("message:  %s" %ex_value)
    log_error("in Class: "+ inClass)
    #log_error("trace:   %s" %stack_trace)            
    
#--- format printLine  --------------------------------------------------------
def fPL(value):
    line = "{0:04b} {1:04b} - 0x{2:02X} - {2:4}".format(value>>4, value&0b00001111, value)
    return line

"""
import struct

x = [0b11111111, 0b11010100]

y = int.from_bytes(x, byteorder='big', signed=True)
#z = y.to_bytes(2, 'big')
#z = y.to_bytes((y.bit_length() + 7) // 8, 'big')

z = y.to_bytes(length=(8 + (y + (y < 0)).bit_length()) // 8, byteorder='big', signed=True)

print(y)
print(z)
"""