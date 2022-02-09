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
from PySide6.QtWidgets import (QApplication, QFrame, QHeaderView, QLabel,
    QListWidget, QListWidgetItem, QMainWindow, QMenuBar,
    QPushButton, QSizePolicy, QStatusBar, QTabWidget,
    QTableWidget, QTableWidgetItem, QTextBrowser, QTextEdit,
    QWidget)

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
        self.mf_RxLog.setGeometry(QRect(10, 90, 461, 431))
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
        self.tab_mapper = QWidget()
        self.tab_mapper.setObjectName(u"tab_mapper")
        self.tabWidget.addTab(self.tab_mapper, "")
        self.tab_cmc = QWidget()
        self.tab_cmc.setObjectName(u"tab_cmc")
        self.bu_scan_devices = QPushButton(self.tab_cmc)
        self.bu_scan_devices.setObjectName(u"bu_scan_devices")
        self.bu_scan_devices.setGeometry(QRect(10, 10, 251, 41))
        self.tab_devices = QTableWidget(self.tab_cmc)
        if (self.tab_devices.columnCount() < 4):
            self.tab_devices.setColumnCount(4)
        __qtablewidgetitem = QTableWidgetItem()
        self.tab_devices.setHorizontalHeaderItem(0, __qtablewidgetitem)
        __qtablewidgetitem1 = QTableWidgetItem()
        self.tab_devices.setHorizontalHeaderItem(1, __qtablewidgetitem1)
        __qtablewidgetitem2 = QTableWidgetItem()
        self.tab_devices.setHorizontalHeaderItem(2, __qtablewidgetitem2)
        __qtablewidgetitem3 = QTableWidgetItem()
        self.tab_devices.setHorizontalHeaderItem(3, __qtablewidgetitem3)
        self.tab_devices.setObjectName(u"tab_devices")
        self.tab_devices.setGeometry(QRect(10, 60, 251, 171))
        self.tab_devices.setGridStyle(Qt.SolidLine)
        self.tab_devices.setRowCount(0)
        self.tab_devices.setColumnCount(4)
        self.tab_devices.horizontalHeader().setCascadingSectionResizes(True)
        self.tab_devices.horizontalHeader().setDefaultSectionSize(39)
        self.tab_devices.horizontalHeader().setProperty("showSortIndicator", False)
        self.tab_devices.horizontalHeader().setStretchLastSection(True)
        self.tab_devices.verticalHeader().setVisible(False)
        self.bu_lock_device = QPushButton(self.tab_cmc)
        self.bu_lock_device.setObjectName(u"bu_lock_device")
        self.bu_lock_device.setGeometry(QRect(10, 240, 251, 41))
        self.lbl_locked_to = QLabel(self.tab_cmc)
        self.lbl_locked_to.setObjectName(u"lbl_locked_to")
        self.lbl_locked_to.setGeometry(QRect(10, 290, 251, 21))
        self.lbl_locked_to.setFont(font)
        self.lbl_locked_to.setAlignment(Qt.AlignLeading|Qt.AlignLeft|Qt.AlignTop)
        self.tab_qCMC = QTableWidget(self.tab_cmc)
        if (self.tab_qCMC.columnCount() < 3):
            self.tab_qCMC.setColumnCount(3)
        __qtablewidgetitem4 = QTableWidgetItem()
        __qtablewidgetitem4.setBackground(QColor(255, 170, 0));
        self.tab_qCMC.setHorizontalHeaderItem(0, __qtablewidgetitem4)
        __qtablewidgetitem5 = QTableWidgetItem()
        __qtablewidgetitem5.setBackground(QColor(255, 170, 0));
        self.tab_qCMC.setHorizontalHeaderItem(1, __qtablewidgetitem5)
        __qtablewidgetitem6 = QTableWidgetItem()
        __qtablewidgetitem6.setBackground(QColor(255, 170, 0));
        self.tab_qCMC.setHorizontalHeaderItem(2, __qtablewidgetitem6)
        if (self.tab_qCMC.rowCount() < 6):
            self.tab_qCMC.setRowCount(6)
        __qtablewidgetitem7 = QTableWidgetItem()
        __qtablewidgetitem7.setBackground(QColor(255, 170, 0));
        self.tab_qCMC.setVerticalHeaderItem(0, __qtablewidgetitem7)
        __qtablewidgetitem8 = QTableWidgetItem()
        __qtablewidgetitem8.setBackground(QColor(255, 170, 0));
        self.tab_qCMC.setVerticalHeaderItem(1, __qtablewidgetitem8)
        __qtablewidgetitem9 = QTableWidgetItem()
        __qtablewidgetitem9.setBackground(QColor(255, 170, 0));
        self.tab_qCMC.setVerticalHeaderItem(2, __qtablewidgetitem9)
        __qtablewidgetitem10 = QTableWidgetItem()
        __qtablewidgetitem10.setBackground(QColor(255, 170, 0));
        self.tab_qCMC.setVerticalHeaderItem(3, __qtablewidgetitem10)
        __qtablewidgetitem11 = QTableWidgetItem()
        __qtablewidgetitem11.setBackground(QColor(255, 170, 0));
        self.tab_qCMC.setVerticalHeaderItem(4, __qtablewidgetitem11)
        __qtablewidgetitem12 = QTableWidgetItem()
        __qtablewidgetitem12.setBackground(QColor(255, 170, 0));
        self.tab_qCMC.setVerticalHeaderItem(5, __qtablewidgetitem12)
        brush = QBrush(QColor(0, 0, 0, 255))
        brush.setStyle(Qt.NoBrush)
        __qtablewidgetitem13 = QTableWidgetItem()
        __qtablewidgetitem13.setBackground(brush);
        self.tab_qCMC.setItem(1, 1, __qtablewidgetitem13)
        self.tab_qCMC.setObjectName(u"tab_qCMC")
        self.tab_qCMC.setGeometry(QRect(320, 60, 231, 201))
        self.tab_qCMC.setGridStyle(Qt.SolidLine)
        self.tab_qCMC.setRowCount(6)
        self.tab_qCMC.setColumnCount(3)
        self.tab_qCMC.horizontalHeader().setCascadingSectionResizes(True)
        self.tab_qCMC.horizontalHeader().setMinimumSectionSize(60)
        self.tab_qCMC.horizontalHeader().setDefaultSectionSize(65)
        self.tab_qCMC.horizontalHeader().setProperty("showSortIndicator", False)
        self.tab_qCMC.horizontalHeader().setStretchLastSection(True)
        self.tab_qCMC.verticalHeader().setVisible(True)
        self.tab_qCMC.verticalHeader().setMinimumSectionSize(29)
        self.tab_qCMC.verticalHeader().setDefaultSectionSize(29)
        self.tab_qCMC.verticalHeader().setStretchLastSection(True)
        self.bu_cmc_on = QPushButton(self.tab_cmc)
        self.bu_cmc_on.setObjectName(u"bu_cmc_on")
        self.bu_cmc_on.setGeometry(QRect(320, 10, 231, 41))
        self.line = QFrame(self.tab_cmc)
        self.line.setObjectName(u"line")
        self.line.setGeometry(QRect(260, 10, 61, 501))
        self.line.setFrameShadow(QFrame.Raised)
        self.line.setLineWidth(2)
        self.line.setMidLineWidth(2)
        self.line.setFrameShape(QFrame.VLine)
        self.li_qCMC_log = QListWidget(self.tab_cmc)
        self.li_qCMC_log.setObjectName(u"li_qCMC_log")
        self.li_qCMC_log.setGeometry(QRect(320, 290, 231, 221))
        self.li_qCMC_log.setAutoScrollMargin(12)
        self.li_device_log = QListWidget(self.tab_cmc)
        self.li_device_log.setObjectName(u"li_device_log")
        self.li_device_log.setGeometry(QRect(10, 290, 251, 221))
        self.tabWidget.addTab(self.tab_cmc, "")
        self.tab_mqtt = QWidget()
        self.tab_mqtt.setObjectName(u"tab_mqtt")
        self.tabWidget.addTab(self.tab_mqtt, "")
        self.tab = QWidget()
        self.tab.setObjectName(u"tab")
        self.bu_import_scd = QPushButton(self.tab)
        self.bu_import_scd.setObjectName(u"bu_import_scd")
        self.bu_import_scd.setGeometry(QRect(10, 3, 121, 51))
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

        self.tabWidget.setCurrentIndex(2)


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
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_mapper), QCoreApplication.translate("frm_main", u"<-- Mapper -->", None))
        self.bu_scan_devices.setText(QCoreApplication.translate("frm_main", u"Scan for Devices", None))
        ___qtablewidgetitem = self.tab_devices.horizontalHeaderItem(0)
        ___qtablewidgetitem.setText(QCoreApplication.translate("frm_main", u"ID", None));
        ___qtablewidgetitem1 = self.tab_devices.horizontalHeaderItem(1)
        ___qtablewidgetitem1.setText(QCoreApplication.translate("frm_main", u"Serial", None));
        ___qtablewidgetitem2 = self.tab_devices.horizontalHeaderItem(2)
        ___qtablewidgetitem2.setText(QCoreApplication.translate("frm_main", u"Typ", None));
        ___qtablewidgetitem3 = self.tab_devices.horizontalHeaderItem(3)
        ___qtablewidgetitem3.setText(QCoreApplication.translate("frm_main", u"IP", None));
        self.bu_lock_device.setText(QCoreApplication.translate("frm_main", u"Lock Device", None))
        self.lbl_locked_to.setText("")
        ___qtablewidgetitem4 = self.tab_qCMC.horizontalHeaderItem(0)
        ___qtablewidgetitem4.setText(QCoreApplication.translate("frm_main", u"Amp.", None));
        ___qtablewidgetitem5 = self.tab_qCMC.horizontalHeaderItem(1)
        ___qtablewidgetitem5.setText(QCoreApplication.translate("frm_main", u"Phase", None));
        ___qtablewidgetitem6 = self.tab_qCMC.horizontalHeaderItem(2)
        ___qtablewidgetitem6.setText(QCoreApplication.translate("frm_main", u"Freq.", None));
        ___qtablewidgetitem7 = self.tab_qCMC.verticalHeaderItem(0)
        ___qtablewidgetitem7.setText(QCoreApplication.translate("frm_main", u"UL1-N", None));
        ___qtablewidgetitem8 = self.tab_qCMC.verticalHeaderItem(1)
        ___qtablewidgetitem8.setText(QCoreApplication.translate("frm_main", u"UL2-N", None));
        ___qtablewidgetitem9 = self.tab_qCMC.verticalHeaderItem(2)
        ___qtablewidgetitem9.setText(QCoreApplication.translate("frm_main", u"UL3-N", None));
        ___qtablewidgetitem10 = self.tab_qCMC.verticalHeaderItem(3)
        ___qtablewidgetitem10.setText(QCoreApplication.translate("frm_main", u"IL1", None));
        ___qtablewidgetitem11 = self.tab_qCMC.verticalHeaderItem(4)
        ___qtablewidgetitem11.setText(QCoreApplication.translate("frm_main", u"IL2", None));
        ___qtablewidgetitem12 = self.tab_qCMC.verticalHeaderItem(5)
        ___qtablewidgetitem12.setText(QCoreApplication.translate("frm_main", u"IL3", None));

        __sortingEnabled = self.tab_qCMC.isSortingEnabled()
        self.tab_qCMC.setSortingEnabled(False)
        self.tab_qCMC.setSortingEnabled(__sortingEnabled)

        self.bu_cmc_on.setText(QCoreApplication.translate("frm_main", u"CMC Power", None))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_cmc), QCoreApplication.translate("frm_main", u"Omicron CMC-Control", None))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_mqtt), QCoreApplication.translate("frm_main", u"MQTT", None))
        self.bu_import_scd.setText(QCoreApplication.translate("frm_main", u"Load SCD-File", None))
        self.mf_scd.setHtml(QCoreApplication.translate("frm_main", u"<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n"
"<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"</style></head><body style=\" font-family:'Segoe UI'; font-size:10pt; font-weight:400; font-style:normal;\">\n"
"<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; font-family:'Consolas';\"><br /></p></body></html>", None))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab), QCoreApplication.translate("frm_main", u"SCD Import", None))
    # retranslateUi

