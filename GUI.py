from PySide6.QtWidgets import QApplication, QMainWindow
import threading

class Frm_main(QMainWindow):
    def __init__(self):
        super().__init__()
        
app = QApplication()
frm_main = Frm_main()
        
def start():
    frm_main.show()
    app.exec()