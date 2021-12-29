###############################################################################
#   TOOLS
###############################################################################
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