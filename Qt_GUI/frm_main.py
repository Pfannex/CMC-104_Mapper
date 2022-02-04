# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'frm_main.ui'
##
## Created by: Qt User Interface Compiler version 6.2.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide6.QtCore import (QCoreApplication, QDate, QDateTime, QLocale,
    QMetaObject, QObject, QPoint, QRect,
    QSize, QTime, QUrl, Qt)
from PySide6.QtGui import (QBrush, QColor, QConicalGradient, QCursor,
    QFont, QFontDatabase, QGradient, QIcon,
    QImage, QKeySequence, QLinearGradient, QPainter,
    QPalette, QPixmap, QRadialGradient, QTransform)
from PySide6.QtWidgets import (QApplication, QHeaderView, QLabel, QMainWindow,
    QMenuBar, QPushButton, QSizePolicy, QStatusBar,
    QTabWidget, QTableWidget, QTableWidgetItem, QTextBrowser,
    QTextEdit, QWidget)

class Ui_frm_main(object):
    def setupUi(self, frm_main):
        if not frm_main.objectName():
            frm_main.setObjectName(u"frm_main")
        frm_main.resize(800, 600)
        icon = QIcon()
        icon.addFile(u"Icon.png", QSize(), QIcon.Normal, QIcon.Off)
        frm_main.setWindowIcon(icon)
        self.centralwidget = QWidget(frm_main)
        self.centralwidget.setObjectName(u"centralwidget")
        self.tabWidget = QTabWidget(self.centralwidget)
        self.tabWidget.setObjectName(u"tabWidget")
        self.tabWidget.setGeometry(QRect(10, 0, 781, 551))
        self.tabWidget.setDocumentMode(False)
        self.tabWidget.setTabsClosable(False)
        self.tab_104 = QWidget()
        self.tab_104.setObjectName(u"tab_104")
        self.mf_RxLog = QTextBrowser(self.tab_104)
        self.mf_RxLog.setObjectName(u"mf_RxLog")
        self.mf_RxLog.setGeometry(QRect(10, 90, 761, 431))
        font = QFont()
        font.setPointSize(10)
        self.mf_RxLog.setFont(font)
        self.lbl_server_log = QLabel(self.tab_104)
        self.lbl_server_log.setObjectName(u"lbl_server_log")
        self.lbl_server_log.setGeometry(QRect(10, 70, 121, 16))
        self.lbl_client_port = QLabel(self.tab_104)
        self.lbl_client_port.setObjectName(u"lbl_client_port")
        self.lbl_client_port.setGeometry(QRect(300, 40, 71, 16))
        self.tb_server_port = QTextEdit(self.tab_104)
        self.tb_server_port.setObjectName(u"tb_server_port")
        self.tb_server_port.setGeometry(QRect(190, 40, 101, 25))
        self.tb_server_port.setInputMethodHints(Qt.ImhNone)
        self.tb_server_port.setVerticalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        self.tb_server_port.setHorizontalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        self.tb_client_port = QTextEdit(self.tab_104)
        self.tb_client_port.setObjectName(u"tb_client_port")
        self.tb_client_port.setEnabled(False)
        self.tb_client_port.setGeometry(QRect(370, 40, 101, 25))
        self.tb_client_port.setInputMethodHints(Qt.ImhNone)
        self.tb_client_port.setVerticalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        self.tb_client_port.setHorizontalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        self.lbl_server_port = QLabel(self.tab_104)
        self.lbl_server_port.setObjectName(u"lbl_server_port")
        self.lbl_server_port.setGeometry(QRect(120, 40, 71, 16))
        self.lbl_server_ip = QLabel(self.tab_104)
        self.lbl_server_ip.setObjectName(u"lbl_server_ip")
        self.lbl_server_ip.setGeometry(QRect(120, 15, 49, 16))
        self.tb_client_ip = QTextEdit(self.tab_104)
        self.tb_client_ip.setObjectName(u"tb_client_ip")
        self.tb_client_ip.setEnabled(False)
        self.tb_client_ip.setGeometry(QRect(370, 13, 101, 25))
        self.tb_client_ip.setInputMethodHints(Qt.ImhNone)
        self.tb_client_ip.setVerticalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        self.tb_client_ip.setHorizontalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        self.tb_server_ip = QTextEdit(self.tab_104)
        self.tb_server_ip.setObjectName(u"tb_server_ip")
        self.tb_server_ip.setGeometry(QRect(190, 13, 101, 25))
        self.tb_server_ip.setInputMethodHints(Qt.ImhNone)
        self.tb_server_ip.setVerticalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        self.tb_server_ip.setHorizontalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        self.lbl_client_ip = QLabel(self.tab_104)
        self.lbl_client_ip.setObjectName(u"lbl_client_ip")
        self.lbl_client_ip.setGeometry(QRect(300, 15, 49, 16))
        self.bu_firstButton = QPushButton(self.tab_104)
        self.bu_firstButton.setObjectName(u"bu_firstButton")
        self.bu_firstButton.setGeometry(QRect(10, 13, 101, 51))
        self.tabWidget.addTab(self.tab_104, "")
        self.tab_cmc = QWidget()
        self.tab_cmc.setObjectName(u"tab_cmc")
        self.bu_scan_devices = QPushButton(self.tab_cmc)
        self.bu_scan_devices.setObjectName(u"bu_scan_devices")
        self.bu_scan_devices.setGeometry(QRect(10, 10, 251, 41))
        self.tabw_devices = QTableWidget(self.tab_cmc)
        if (self.tabw_devices.columnCount() < 4):
            self.tabw_devices.setColumnCount(4)
        self.tabw_devices.setObjectName(u"tabw_devices")
        self.tabw_devices.setGeometry(QRect(10, 60, 251, 171))
        self.tabw_devices.setGridStyle(Qt.SolidLine)
        self.tabw_devices.setRowCount(0)
        self.tabw_devices.setColumnCount(4)
        self.tabw_devices.horizontalHeader().setCascadingSectionResizes(True)
        self.tabw_devices.horizontalHeader().setDefaultSectionSize(39)
        self.tabw_devices.horizontalHeader().setProperty("showSortIndicator", False)
        self.tabw_devices.horizontalHeader().setStretchLastSection(True)
        self.tabw_devices.verticalHeader().setVisible(False)
        self.bu_lock_device = QPushButton(self.tab_cmc)
        self.bu_lock_device.setObjectName(u"bu_lock_device")
        self.bu_lock_device.setGeometry(QRect(10, 240, 251, 41))
        self.lbl_locked_to = QLabel(self.tab_cmc)
        self.lbl_locked_to.setObjectName(u"lbl_locked_to")
        self.lbl_locked_to.setGeometry(QRect(10, 290, 251, 41))
        font1 = QFont()
        font1.setPointSize(12)
        self.lbl_locked_to.setFont(font1)
        self.lbl_locked_to.setAlignment(Qt.AlignLeading|Qt.AlignLeft|Qt.AlignTop)
        self.tabWidget.addTab(self.tab_cmc, "")
        self.tab_mqtt = QWidget()
        self.tab_mqtt.setObjectName(u"tab_mqtt")
        self.tabWidget.addTab(self.tab_mqtt, "")
        self.tab = QWidget()
        self.tab.setObjectName(u"tab")
        self.bu_import_scd = QPushButton(self.tab)
        self.bu_import_scd.setObjectName(u"bu_import_scd")
        self.bu_import_scd.setGeometry(QRect(10, 3, 101, 51))
        self.mf_scd = QTextBrowser(self.tab)
        self.mf_scd.setObjectName(u"mf_scd")
        self.mf_scd.setGeometry(QRect(10, 60, 761, 451))
        self.mf_scd.setFont(font)
        self.tabWidget.addTab(self.tab, "")
        frm_main.setCentralWidget(self.centralwidget)
        self.menubar = QMenuBar(frm_main)
        self.menubar.setObjectName(u"menubar")
        self.menubar.setGeometry(QRect(0, 0, 800, 22))
        frm_main.setMenuBar(self.menubar)
        self.statusbar = QStatusBar(frm_main)
        self.statusbar.setObjectName(u"statusbar")
        frm_main.setStatusBar(self.statusbar)

        self.retranslateUi(frm_main)

        self.tabWidget.setCurrentIndex(1)


        QMetaObject.connectSlotsByName(frm_main)
    # setupUi

    def retranslateUi(self, frm_main):
        frm_main.setWindowTitle(QCoreApplication.translate("frm_main", u"IEC 60870-5-104 to Omicron CMC Mapper", None))
        self.mf_RxLog.setHtml(QCoreApplication.translate("frm_main", u"<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n"
"<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"</style></head><body style=\" font-family:'Segoe UI'; font-size:10pt; font-weight:400; font-style:normal;\">\n"
"<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; font-family:'Consolas';\"><br /></p></body></html>", None))
        self.lbl_server_log.setText(QCoreApplication.translate("frm_main", u"Server-Log:", None))
        self.lbl_client_port.setText(QCoreApplication.translate("frm_main", u"Client Port", None))
        self.tb_server_port.setHtml(QCoreApplication.translate("frm_main", u"<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n"
"<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2404</p></body></html>", None))
        self.tb_client_port.setHtml(QCoreApplication.translate("frm_main", u"<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n"
"<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n"
"<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><br /></p>\n"
"<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><br /></p></body></html>", None))
        self.lbl_server_port.setText(QCoreApplication.translate("frm_main", u"Server Port", None))
        self.lbl_server_ip.setText(QCoreApplication.translate("frm_main", u"Server IP", None))
        self.tb_client_ip.setHtml(QCoreApplication.translate("frm_main", u"<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n"
"<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n"
"<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><br /></p>\n"
"<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><br /></p></body></html>", None))
        self.tb_server_ip.setHtml(QCoreApplication.translate("frm_main", u"<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n"
"<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">127.0.0.1</p></body></html>", None))
        self.lbl_client_ip.setText(QCoreApplication.translate("frm_main", u"Client IP", None))
        self.bu_firstButton.setText(QCoreApplication.translate("frm_main", u"start Server", None))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_104), QCoreApplication.translate("frm_main", u"IEC 60870-5-104 Server", None))
        self.bu_scan_devices.setText(QCoreApplication.translate("frm_main", u"Scan for Devices", None))
        self.bu_lock_device.setText(QCoreApplication.translate("frm_main", u"Lock Device", None))
        self.lbl_locked_to.setText("")
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_cmc), QCoreApplication.translate("frm_main", u"Omicron CMC-Control", None))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_mqtt), QCoreApplication.translate("frm_main", u"MQTT", None))
        self.bu_import_scd.setText(QCoreApplication.translate("frm_main", u"start Server", None))
        self.mf_scd.setHtml(QCoreApplication.translate("frm_main", u"<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n"
"<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"</style></head><body style=\" font-family:'Segoe UI'; font-size:10pt; font-weight:400; font-style:normal;\">\n"
"<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; font-family:'Consolas';\"><br /></p></body></html>", None))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab), QCoreApplication.translate("frm_main", u"SCD Import", None))
    # retranslateUi

