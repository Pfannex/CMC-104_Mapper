from PySide6.QtWidgets import QApplication, QMainWindow
from Qt_GUI.frm_main import Ui_frm_main
import xl
#import threading

class Frm_main(QMainWindow, Ui_frm_main):
    def __init__(self):
        super().__init__()
        self.setupUi(self)
        self.bu_firstButton.clicked.connect(self.on_Button_click)
        
    def on_Button_click(self):
        lst = xl.xls()
        lst_str = str(lst)
        self.tb_test.setPlainText(lst_str)
        
app = QApplication()
frm_main = Frm_main()
        
def start():
    frm_main.show()
    app.exec()