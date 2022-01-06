###############################################################################
#   TOOLS
###############################################################################
import sys
import traceback
import time
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
def start():
    log (__name__+ " start")
    
#--- update  ------------------------------------------------------------------
def handle():
    log (__name__ + " handle")
    
#--- logging  -----------------------------------------------------------------
def log(msg):
    format = "%(asctime)s - %(levelname)s - %(message)s"
    logging.basicConfig(format=format, level=logging.INFO)
    logging.info (msg)
def log_error(msg):
    format = "%(asctime)s - %(levelname)s - %(message)s"
    logging.basicConfig(format=format, level=logging.ERROR)
    logging.error (msg)
    
def logEx(ex):
    # Get current system exception
    ex_type, ex_value, ex_traceback = sys.exc_info()
    # Extract unformatter stack traces as tuples
    trace_back = traceback.extract_tb(ex_traceback)
    # Format stacktrace
    stack_trace = list()
    for trace in trace_back:
        stack_trace.append("File : %s , Line : %d, Func.Name : %s, Message : %s" % (trace[0], trace[1], trace[2], trace[3]))
    log_error("type:    %s " % ex_type.__name__)
    log_error("message: %s" %ex_value)
    log_error("trace:   %s" %stack_trace)            
    
#--- format printLine  --------------------------------------------------------
def fPL(value):
    line = "{0:04b} {1:04b} - 0x{2:02X} - {2:4}".format(value>>4, value&0b00001111, value)
    return line
