###############################################################################
#   TOOLS
###############################################################################
import logging
import time
from threading import Thread


###############################################################################
#   DECLARATION
###############################################################################
class IdleTimer(Thread):
    def __init__(self, time, callback):
        self.time = time
        self.callback = callback
        Thread.__init__(self)
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

# --- Start up -----------------------------------------------------------------
def start():
    log(__name__ + " start")


# --- update  ------------------------------------------------------------------
def handle():
    log(__name__ + " handle")


# --- logging  -----------------------------------------------------------------
def log(msg):
    log_format = "%(asctime)s - %(levelname)s - %(message)s"
    logging.basicConfig(format=log_format, level=logging.INFO)
    logging.info(msg)

# --- timer  -------------------------------------------------------------------
# def initTimer(time):
# t1 = idleTimer(2)
# t1.start()
