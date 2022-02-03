<?xml version="1.0" encoding="UTF-8"?>
<SCL version="2007" revision="B" release="4" xmlns="http://www.iec.ch/61850/2003/SCL" xsi:schemaLocation="http://www.iec.ch/61850/2003/SCL SCL.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:IEC_60870_5_104="http://www.iec.ch/61850-80-1/2007/SCL" xmlns:siebase="http://www.siemens.com/energy/2009/09/siprotec5/SieBase" xmlns:siedig="http://www.siemens.com/energy/2011/11/Siedig">
	<Private type="Siemens-SclLib-V5-Version">V03.20.01.000</Private>
	<Private type="Siemens-SclLib-V5-EditTime">03.02.2022 14:10:20</Private>
	<Private type="Siemens-Configurator-Version">7.0.85</Private>
	<Private type="Siemens_SiedigGooseApplicationStorage">
		<siedig:GooseApplicationStorage>
			<siedig:MacAddrMin>01-0C-CD-01-00-00</siedig:MacAddrMin>
			<siedig:MacAddrMax>01-0C-CD-01-01-FF</siedig:MacAddrMax>
			<siedig:GooseApplication name="Q32_Steuerung" desc="" profileName="PriorityLow">
				<siedig:AppId>0001</siedig:AppId>
				<siedig:MinTime unit="s" multiplier="m">10</siedig:MinTime>
				<siedig:MaxTime unit="s" multiplier="m">2000</siedig:MaxTime>
				<siedig:VLanId>000</siedig:VLanId>
				<siedig:VLanPriority>4</siedig:VLanPriority>
				<siedig:DataSet guidRef="da421c0d22d04625874b2193c293c77d" />
			</siedig:GooseApplication>
			<siedig:GooseApplication name="Q32_Rückmeldung" desc="" profileName="PriorityLow">
				<siedig:AppId>0002</siedig:AppId>
				<siedig:MinTime unit="s" multiplier="m">10</siedig:MinTime>
				<siedig:MaxTime unit="s" multiplier="m">2000</siedig:MaxTime>
				<siedig:VLanId>000</siedig:VLanId>
				<siedig:VLanPriority>4</siedig:VLanPriority>
				<siedig:DataSet guidRef="670f64bb871d4d0a99c8fedb3ee89fc0" />
			</siedig:GooseApplication>
			<siedig:GooseApplication name="Meldungen" desc="" profileName="PriorityLow">
				<siedig:AppId>0003</siedig:AppId>
				<siedig:MinTime unit="s" multiplier="m">10</siedig:MinTime>
				<siedig:MaxTime unit="s" multiplier="m">2000</siedig:MaxTime>
				<siedig:VLanId>000</siedig:VLanId>
				<siedig:VLanPriority>4</siedig:VLanPriority>
				<siedig:DataSet guidRef="5606fedec9d94f5f9c784d7095d72e65" />
			</siedig:GooseApplication>
		</siedig:GooseApplicationStorage>
	</Private>
	<Private type="Siemens_SiedigSMVApplicationStorage">
		<siedig:SMVApplicationStorage>
			<siedig:MacAddrMax>01-0C-CD-04-01-FF</siedig:MacAddrMax>
			<siedig:MacAddrMin>01-0C-CD-04-00-00</siedig:MacAddrMin>
			<siedig:SMVApplication name="E12B_PIU/Mod3_MU1/LLN0/PhsMeas1" desc="" profileName="">
				<siedig:SmvId>4000</siedig:SmvId>
				<siedig:DataSet guidRef="00db5b97-2bb6-4fc7-9a84-305ba49751b6" />
			</siedig:SMVApplication>
		</siedig:SMVApplicationStorage>
	</Private>
	<Header id="SCD_Siiipe_TEST" version="1" revision="103" toolID="IEC 61850 System Configurator, Version: 7.0.85" nameStructure="IEDName">
		<Text>Datenmodell</Text>
		<History>
			<Hitem version="1" revision="1" when="Wednesday, September 1, 2021 11:58:21 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP is imported from C:\Users\UW2030\AppData\Local\Temp\pyvqc0o2.waq\SIP.iid" why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="2" when="Wednesday, September 1, 2021 12:04:15 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP updated from C:\Users\UW2030\AppData\Local\Temp\nzcdpqh5.10k\SIP.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="3" when="Monday, September 6, 2021 11:14:58 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Automatic archive done at : S:\_Untersuchungen\Aufbau_Sitipe_TEST\Sitipe_TEST\SCD_EXPORT\SCD_Siiipe_TEST\Archive\SCD_Siiipe_TEST_20210906_111458.sz" why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="4" when="Monday, September 6, 2021 11:14:58 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Station is upgraded from IEC 61850 System Configurator, Version: 6.60.34 to 6.80.61." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="5" when="Monday, September 6, 2021 11:15:01 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP1 is imported from C:\Users\UW2030\AppData\Local\Temp\p02zpf25.yde\SIP1.iid" why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="6" when="Monday, September 6, 2021 11:15:03 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP updated from C:\Users\UW2030\AppData\Local\Temp\p02zpf25.yde\SIP.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="7" when="Monday, September 6, 2021 11:16:05 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device BRAM_T1_TA1_B100 is imported from S:\Grundparametrierung\SICAM\IID_Exporte\BRAM_T1_TA1_B100.iid" why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="8" when="Monday, September 6, 2021 11:22:38 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP1 updated from C:\Users\UW2030\AppData\Local\Temp\aayow1sb.aan\SIP1.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="9" when="Monday, September 6, 2021 11:25:31 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP1 updated from C:\Users\UW2030\AppData\Local\Temp\zdb4nxk1.fgl\SIP1.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="10" when="Monday, September 6, 2021 11:32:55 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP1 updated from C:\Users\UW2030\AppData\Local\Temp\asepps2e.k0n\SIP1.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="11" when="Monday, September 6, 2021 11:35:06 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP1 updated from C:\Users\UW2030\AppData\Local\Temp\bnxeii2y.3qs\SIP1.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="12" when="Monday, September 6, 2021 11:58:04 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP1 updated from C:\Users\UW2030\AppData\Local\Temp\pjbrax0f.uv1\SIP1.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="13" when="Monday, September 6, 2021 12:00:01 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device BRAM_T1_TA1_B100 updated from S:\_Untersuchungen\Aufbau_Sitipe_TEST\Sitipe_TEST\SCD_EXPORT\SCD_Siiipe_TEST\BRAM_T1_TA1_B100.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="14" when="Monday, September 6, 2021 12:01:59 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device BRAM_T1_TA1_B100 is deleted." why="IEC 61850 System Configurator User Action: Insert Comment" />
			<Hitem version="1" revision="15" when="Monday, September 6, 2021 12:02:18 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device BRAM_T1_TA1_B100 is imported from S:\_Untersuchungen\Aufbau_Sitipe_TEST\Sitipe_TEST\SCD_EXPORT\SCD_Siiipe_TEST\BRAM_T1_TA1_B100.iid" why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="16" when="Monday, September 6, 2021 12:39:07 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP1 updated from C:\Users\UW2030\AppData\Local\Temp\qojq5tdn.xr2\SIP1.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="17" when="Monday, September 6, 2021 12:40:43 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device BRAM_T1_TA1_B100 is deleted." why="IEC 61850 System Configurator User Action: Insert Comment" />
			<Hitem version="1" revision="18" when="Monday, September 6, 2021 12:41:02 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device BRAM_T1_TA1_B100 is imported from S:\_Untersuchungen\Aufbau_Sitipe_TEST\Sitipe_TEST\SCD_EXPORT\SCD_Siiipe_TEST\BRAM_T1_TA1_B100.iid" why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="19" when="Monday, September 6, 2021 2:19:06 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device BRAM_T1_TA1_B100 updated from S:\_Untersuchungen\Aufbau_Sitipe_TEST\Sitipe_TEST\SCD_EXPORT\SCD_Siiipe_TEST\BRAM_T1_TA1_B100_2.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="20" when="Monday, September 6, 2021 2:19:33 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device BRAM_T1_TA1_B100 is deleted." why="IEC 61850 System Configurator User Action: Insert Comment" />
			<Hitem version="1" revision="21" when="Monday, September 6, 2021 2:19:43 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device BRAM_T1_TA1_B100 is imported from S:\_Untersuchungen\Aufbau_Sitipe_TEST\Sitipe_TEST\SCD_EXPORT\SCD_Siiipe_TEST\BRAM_T1_TA1_B100_2.iid" why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="22" when="Monday, September 6, 2021 2:27:35 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP1 updated from C:\Users\UW2030\AppData\Local\Temp\4thie2et.3gz\SIP1.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="23" when="Monday, September 13, 2021 11:23:01 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP updated from C:\Users\UW2030\AppData\Local\Temp\c4hhobn0.41q\SIP.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="24" when="Monday, September 13, 2021 11:42:29 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP updated from C:\Users\UW2030\AppData\Local\Temp\ew1q5qod.px5\SIP.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="25" when="Tuesday, September 14, 2021 7:45:13 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP updated from C:\Users\UW2030\AppData\Local\Temp\gcbll03f.bsx\SIP.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="26" when="Tuesday, September 14, 2021 7:58:13 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP updated from C:\Users\UW2030\AppData\Local\Temp\nhsilshi.e2z\SIP.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="27" when="Tuesday, September 14, 2021 8:13:41 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP updated from C:\Users\UW2030\AppData\Local\Temp\aqkvnk2w.prr\SIP.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="28" when="Tuesday, September 14, 2021 10:44:11 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP updated from C:\Users\UW2030\AppData\Local\Temp\5i4jnmcs.koa\SIP.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="29" when="Tuesday, September 14, 2021 11:10:23 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP updated from C:\Users\UW2030\AppData\Local\Temp\pdwamix1.10h\SIP.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="30" when="Tuesday, September 14, 2021 12:01:00 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP updated from C:\Users\UW2030\AppData\Local\Temp\ajzzaboy.5jw\SIP.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="31" when="Wednesday, October 20, 2021 1:38:14 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP updated from C:\Users\UW2030\AppData\Local\Temp\auvkkaeb.2np\SIP.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="32" when="Wednesday, October 20, 2021 1:38:15 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP1 updated from C:\Users\UW2030\AppData\Local\Temp\auvkkaeb.2np\SIP1.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="33" when="Wednesday, October 20, 2021 1:56:43 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP updated from C:\Users\UW2030\AppData\Local\Temp\hef34ssf.i2m\SIP.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="34" when="Monday, October 25, 2021 10:51:15 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP updated from C:\Users\UW2030\AppData\Local\Temp\sffqdlwn.vbk\SIP.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="35" when="Monday, October 25, 2021 11:06:36 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP updated from C:\Users\UW2030\AppData\Local\Temp\1uvvifdh.bic\SIP.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="36" when="Monday, October 25, 2021 12:36:15 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU is imported from C:\Users\UW2030\AppData\Local\Temp\5mwyvhyn.qd1\E12B_BPCU.iid" why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="37" when="Monday, October 25, 2021 12:36:17 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_PIU updated from C:\Users\UW2030\AppData\Local\Temp\5mwyvhyn.qd1\E12B_PIU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="38" when="Monday, October 25, 2021 12:41:09 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\dhyow15g.51h\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="39" when="Monday, October 25, 2021 12:49:29 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\ahr2rsqo.3ud\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="40" when="Monday, October 25, 2021 12:56:17 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\cbfbozcn.32z\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="41" when="Monday, October 25, 2021 1:37:28 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\2rkc2omt.1ol\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="42" when="Monday, October 25, 2021 1:42:15 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\vy4htufb.rp1\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="43" when="Monday, October 25, 2021 1:59:44 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\hemt2qne.2dt\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="44" when="Tuesday, October 26, 2021 10:51:57 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device SIP1 is deleted." why="IEC 61850 System Configurator User Action: Insert Comment" />
			<Hitem version="1" revision="45" when="Tuesday, October 26, 2021 11:08:33 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\dwkkp0ea.vg4\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="46" when="Tuesday, October 26, 2021 11:45:41 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\tmtn0po2.etx\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="47" when="Tuesday, October 26, 2021 2:01:41 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\yl3j1rmr.c0r\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="48" when="Wednesday, October 27, 2021 1:01:52 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\csj4b5qv.l5m\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="49" when="Thursday, October 28, 2021 8:48:58 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\xlefvrtn.ruu\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="50" when="Thursday, October 28, 2021 9:50:33 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\bwzjbxgo.hrr\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="51" when="Monday, November 15, 2021 1:03:18 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\bxyvpala.jgh\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="52" when="Monday, November 15, 2021 1:03:19 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_PIU updated from C:\Users\UW2030\AppData\Local\Temp\bxyvpala.jgh\E12B_PIU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="53" when="Monday, November 15, 2021 3:27:08 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_PIU updated from C:\Users\UW2030\AppData\Local\Temp\5xy3xo1c.e5z\E12B_PIU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="54" when="Thursday, November 18, 2021 11:01:43 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\2lupl332.2ek\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="55" when="Thursday, November 18, 2021 11:01:44 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_PIU updated from C:\Users\UW2030\AppData\Local\Temp\2lupl332.2ek\E12B_PIU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="56" when="Thursday, November 18, 2021 11:20:55 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\lmulluss.kg2\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="57" when="Thursday, November 18, 2021 11:20:55 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_PIU updated from C:\Users\UW2030\AppData\Local\Temp\lmulluss.kg2\E12B_PIU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="58" when="Thursday, November 18, 2021 12:36:04 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_PIU updated from C:\Users\UW2030\AppData\Local\Temp\5b01zp33.twj\E12B_PIU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="59" when="Monday, November 22, 2021 1:45:48 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\yq342nke.qjb\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="60" when="Monday, November 22, 2021 1:59:18 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\qqgaolrv.ts2\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="61" when="Tuesday, November 23, 2021 11:01:23 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\1v0ukpxl.pma\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="62" when="Thursday, November 25, 2021 9:32:32 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_PIU updated from C:\Users\UW2030\AppData\Local\Temp\sahkkwk0.zgr\E12B_PIU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="63" when="Thursday, November 25, 2021 9:34:12 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_PIU updated from C:\Users\UW2030\AppData\Local\Temp\aw3azcos.fbp\E12B_PIU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="64" when="Thursday, November 25, 2021 10:09:53 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\uggqitbb.0r3\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="65" when="Thursday, November 25, 2021 10:16:30 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_PIU updated from C:\Users\UW2030\AppData\Local\Temp\43qt3j2a.333\E12B_PIU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="66" when="Thursday, November 25, 2021 10:42:00 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\eykvlutj.ak3\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="67" when="Wednesday, December 15, 2021 8:08:04 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\0rmvno3k.x5d\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="68" when="Thursday, December 16, 2021 9:01:47 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_PIU updated from C:\Users\UW2030\AppData\Local\Temp\ge1q3ygk.vb4\E12B_PIU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="69" when="Thursday, December 16, 2021 9:01:48 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\ge1q3ygk.vb4\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="70" when="Thursday, December 16, 2021 9:58:56 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_PIU updated from C:\Users\UW2030\AppData\Local\Temp\x5lqt2cb.rqk\E12B_PIU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="71" when="Thursday, December 16, 2021 9:58:57 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\x5lqt2cb.rqk\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="72" when="Thursday, December 16, 2021 10:34:37 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\04xlm1fw.zrr\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="73" when="Thursday, December 16, 2021 3:30:06 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\dq1pymua.pr1\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="74" when="Tuesday, January 11, 2022 9:58:57 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device BRAM_T1_TA1_B100 is deleted." why="IEC 61850 System Configurator User Action: Insert Comment" />
			<Hitem version="1" revision="75" when="Tuesday, January 11, 2022 1:29:56 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\xwmdsk0s.40i\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="76" when="Tuesday, January 11, 2022 1:34:35 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\mx2savey.zk2\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="77" when="Tuesday, January 11, 2022 1:49:31 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\3e0b51c1.zps\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="78" when="Tuesday, January 11, 2022 2:04:47 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\gmz0rl45.bxk\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="79" when="Tuesday, January 11, 2022 2:07:21 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\vai22av2.z1i\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="80" when="Wednesday, January 12, 2022 9:34:28 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\syinmucw.csq\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="81" when="Wednesday, January 12, 2022 9:59:52 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\z40yfdln.yqs\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="82" when="Wednesday, January 12, 2022 1:02:59 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\iaqq35te.kzm\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="83" when="Wednesday, January 12, 2022 1:19:12 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\ejwspwgc.euy\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="84" when="Wednesday, January 12, 2022 2:38:59 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\5granej4.d4y\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="85" when="Wednesday, January 19, 2022 9:43:29 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_PIU updated from C:\Users\UW2030\AppData\Local\Temp\3v2f3sju.l1t\E12B_PIU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="86" when="Wednesday, January 19, 2022 9:43:30 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\3v2f3sju.l1t\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="87" when="Thursday, January 20, 2022 9:18:10 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\yiiihd0g.5yi\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="88" when="Friday, January 21, 2022 11:05:39 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\h1b1m0oe.1hr\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="89" when="Friday, January 21, 2022 11:21:18 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\kvb5x2iz.eap\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="90" when="Friday, January 21, 2022 12:10:55 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_PIU updated from C:\Users\UW2030\AppData\Local\Temp\kujrjyyk.z5u\E12B_PIU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="91" when="Friday, January 21, 2022 12:10:56 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\kujrjyyk.z5u\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="92" when="Friday, January 21, 2022 1:52:49 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_PIU updated from C:\Users\UW2030\AppData\Local\Temp\ku4lirej.isb\E12B_PIU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="93" when="Friday, January 28, 2022 12:38:19 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device T_SICAM is imported from C:\Program Files (x86)\Siemens Energy\IEC 61850 System Configurator V06.80\ICD\ED2_Client.icd" why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="94" when="Friday, January 28, 2022 12:48:40 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Existing Device T_SICAM is renamed to LZG." why="IEC 61850 System Configurator User Action: Insert Comment" />
			<Hitem version="1" revision="95" when="Friday, January 28, 2022 4:34:45 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device T_other is imported from C:\Program Files (x86)\Siemens Energy\IEC 61850 System Configurator V06.80\ICD\PC.icd" why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="96" when="Friday, January 28, 2022 4:35:04 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Existing Device T_other is renamed to StationScout." why="IEC 61850 System Configurator User Action: Insert Comment" />
			<Hitem version="1" revision="97" when="Friday, January 28, 2022 4:36:55 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device StationScout is deleted." why="IEC 61850 System Configurator User Action: Insert Comment" />
			<Hitem version="1" revision="98" when="Friday, January 28, 2022 4:37:18 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device T_SICAM is imported from C:\Program Files (x86)\Siemens Energy\IEC 61850 System Configurator V06.80\ICD\ED2_Client.icd" why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="99" when="Friday, January 28, 2022 4:37:31 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Existing Device T_SICAM is renamed to StationScout." why="IEC 61850 System Configurator User Action: Insert Comment" />
			<Hitem version="1" revision="100" when="Thursday, February 3, 2022 8:48:20 AM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device E12B_BPCU updated from C:\Users\UW2030\AppData\Local\Temp\co32cuna.b4r\E12B_BPCU.iid." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="101" when="Thursday, February 3, 2022 12:08:46 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Automatic archive done at : S:\_Untersuchungen\Datenpunktprüfung\Parametrierung\Datenmodell\Archive\Datenmodell_20220203_120846.sz" why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="102" when="Thursday, February 3, 2022 12:08:47 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Station is upgraded from IEC 61850 System Configurator, Version: 6.80.61 to 7.0.85." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="1" revision="103" when="Thursday, February 3, 2022 2:05:13 PM" who="Licenced User:  UW2030 Machine: DESKTOP-AIEGDHD User: UW2030" what="Device StationScout is deleted." why="IEC 61850 System Configurator User Action: Insert Comment" />
		</History>
	</Header>
	<Communication>
		<SubNetwork name="Stations_LAN" type="8-MMS">
			<Private type="Siemens-Start-Address">192.168.2.0</Private>
			<ConnectedAP iedName="E12B_BPCU" apName="F" redProt="rstp">
				<Address>
					<P type="IP" xsi:type="tP_IP">192.168.2.62</P>
					<P type="IP-SUBNET" xsi:type="tP_IP-SUBNET">255.255.255.0</P>
					<P type="OSI-AP-Title">1,3,9999,23</P>
					<P type="OSI-AE-Qualifier">23</P>
					<P type="OSI-PSEL">00000001</P>
					<P type="OSI-SSEL">0001</P>
					<P type="OSI-TSEL">0001</P>
				</Address>
			</ConnectedAP>
			<ConnectedAP iedName="E12B_PIU" apName="F" redProt="rstp">
				<Address>
					<P type="IP" xsi:type="tP_IP">192.168.2.51</P>
					<P type="IP-SUBNET" xsi:type="tP_IP-SUBNET">255.255.255.0</P>
					<P type="OSI-AP-Title">1,3,9999,23</P>
					<P type="OSI-AE-Qualifier">23</P>
					<P type="OSI-PSEL">00000001</P>
					<P type="OSI-SSEL">0001</P>
					<P type="OSI-TSEL">0001</P>
				</Address>
			</ConnectedAP>
			<ConnectedAP iedName="LZG" apName="S1">
				<Address>
					<P type="IP" xsi:type="tP_IP">192.168.2.37</P>
					<P type="IP-SUBNET" xsi:type="tP_IP-SUBNET">255.255.255.0</P>
				</Address>
			</ConnectedAP>
		</SubNetwork>
		<SubNetwork name="Prozess_LAN" type="8-MMS/TCP">
			<Private type="Siemens-Start-Address">172.16.0.1</Private>
			<BitRate unit="b/s" multiplier="M">1000</BitRate>
			<ConnectedAP iedName="E12B_PIU" apName="E" redProt="prp">
				<Address>
					<P type="IP" xsi:type="tP_IP">192.168.3.51</P>
					<P type="IP-SUBNET" xsi:type="tP_IP-SUBNET">255.255.255.0</P>
					<P type="OSI-AP-Title">1,3,9999,23</P>
					<P type="OSI-AE-Qualifier">23</P>
					<P type="OSI-PSEL">00000001</P>
					<P type="OSI-SSEL">0001</P>
					<P type="OSI-TSEL">0001</P>
				</Address>
				<GSE ldInst="Meldungen" cbName="Q32_Meldung">
					<Address>
						<P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-00-02</P>
						<P type="VLAN-ID" xsi:type="tP_VLAN-ID">06F</P>
						<P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
						<P type="APPID" xsi:type="tP_APPID">0063</P>
					</Address>
					<MinTime unit="s" multiplier="m">10</MinTime>
					<MaxTime unit="s" multiplier="m">2000</MaxTime>
				</GSE>
				<GSE ldInst="Erdungsschalter" cbName="Control_DataSet">
					<Address>
						<P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-00-01</P>
						<P type="VLAN-ID" xsi:type="tP_VLAN-ID">000</P>
						<P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
						<P type="APPID" xsi:type="tP_APPID">0001</P>
					</Address>
					<MinTime unit="s" multiplier="m">10</MinTime>
					<MaxTime unit="s" multiplier="m">2000</MaxTime>
				</GSE>
				<SMV ldInst="Mod3_MU1" cbName="MSVCB01">
					<Address>
						<P type="VLAN-ID" xsi:type="tP_VLAN-ID">000</P>
						<P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
						<P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-04-00-00</P>
						<P type="APPID" xsi:type="tP_APPID">4000</P>
					</Address>
				</SMV>
			</ConnectedAP>
			<ConnectedAP iedName="E12B_BPCU" apName="E" redProt="prp">
				<Address>
					<P type="IP" xsi:type="tP_IP">192.168.3.62</P>
					<P type="IP-SUBNET" xsi:type="tP_IP-SUBNET">255.255.255.0</P>
					<P type="OSI-AP-Title">1,3,9999,23</P>
					<P type="OSI-AE-Qualifier">23</P>
					<P type="OSI-PSEL">00000001</P>
					<P type="OSI-SSEL">0001</P>
					<P type="OSI-TSEL">0001</P>
				</Address>
				<GSE ldInst="Leistungsschalter" cbName="Q32_Steuerung">
					<Address>
						<P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-00-00</P>
						<P type="VLAN-ID" xsi:type="tP_VLAN-ID">06F</P>
						<P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
						<P type="APPID" xsi:type="tP_APPID">0061</P>
					</Address>
					<MinTime unit="s" multiplier="m">10</MinTime>
					<MaxTime unit="s" multiplier="m">2000</MaxTime>
				</GSE>
			</ConnectedAP>
		</SubNetwork>
	</Communication>
	<IED desc="E12B_PIU" name="E12B_PIU" type="7SJ85" manufacturer="SIEMENS" configVersion="V08.80.07" originalSclVersion="2007" originalSclRevision="B" owner="SCD_Siiipe_TEST" originalSclRelease="4">
		<Private type="Siemens-MasterId">25171b1b-886a-4e21-9cf5-a9e1917d30cb</Private>
		<Private type="Siemens-s7ManagerName">E12B_PIU</Private>
		<Private type="Siemens-ICD-Language">de-DE</Private>
		<Private type="Siemens-Siprotec5-Product-Code">7SJ85-DAAA-AA0-0AAAA0-AM0111-13111B-DBD000-000AC0-CB2BA1</Private>
		<Private type="Siemens-Siprotec5-Application-Template">7SJ85_Non_Directional_OC</Private>
		<Private type="Siemens-Siprotec5-Communication-Configuration-Version">88007</Private>
		<Private type="Siemens-Siprotec5-Configuration-Version">V08.80.07</Private>
		<Private type="Siemens-IsSiprotec5IED" />
		<Private type="Siemens-IED-Id">25171b1b-886a-4e21-9cf5-a9e1917d30cb</Private>
		<Private type="Siemens-ModifiedDate">01/28/2022 11:47:25</Private>
		<Private type="Siemens-ModificationCounter">68</Private>
		<Private type="Siemens-NoOfSmvsConfigured">6</Private>
		<Services nameLength="64">
			<SettingGroups>
				<SGEdit resvTms="true" />
			</SettingGroups>
			<GetDirectory />
			<GetDataObjectDefinition />
			<DataObjectDirectory />
			<GetDataSetValue />
			<DataSetDirectory />
			<ConfDataSet max="50" maxAttributes="200" modify="true" />
			<ReadWrite />
			<ConfReportControl max="60" bufMode="both" bufConf="true" />
			<GetCBValues />
			<ReportSettings cbName="Conf" datSet="Dyn" rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" resvTms="true" />
			<GSESettings cbName="Conf" datSet="Conf" appID="Conf" dataLabel="Fix" kdaParticipant="false" />
			<ConfLNs fixPrefix="false" fixLnInst="false" />
			<ConfLdName />
			<GOOSE max="16" fixedOffs="false" goose="true" rGOOSE="false" />
			<SupSubscription maxGo="0" maxSv="0" />
			<ValueHandling setToRO="false" />
			<SMVsc max="2" />
			<SMVSettings cbName="Conf" datSet="Fix" svID="Conf" optFields="Fix" smpRate="Fix" samplesPerSec="true" synchSrcId="true" nofASDU="Fix" kdaParticipant="false">
				<SmpRate>80</SmpRate>
				<SmpRate>256</SmpRate>
				<SamplesPerSec>4000</SamplesPerSec>
				<SamplesPerSec>4800</SamplesPerSec>
				<SamplesPerSec>12800</SamplesPerSec>
				<SamplesPerSec>14400</SamplesPerSec>
				<SamplesPerSec>15360</SamplesPerSec>
			</SMVSettings>
		</Services>
		<AccessPoint desc="Port F" name="F" router="false" clock="false">
			<Server timeout="0">
				<Authentication none="true" />
				<LDevice desc="Anwendung" inst="Application">
					<Private type="Siemens-MasterId">2a6abbf3-ce68-4f46-b0a8-415639da9365</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_Application" desc="Allgemein">
						<Private type="Siemens-MasterId">b4a0568b-8d2a-4fed-b7c5-c3063c677dd2</Private>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB" confRev="1" buffered="false" name="A_URCB">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_1" confRev="1" buffered="false" name="A_URCB_1">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_2" confRev="1" buffered="false" name="A_URCB_2">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_3" confRev="1" buffered="false" name="A_URCB_3">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_4" confRev="1" buffered="false" name="A_URCB_4">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_5" confRev="1" buffered="false" name="A_URCB_5">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_6" confRev="1" buffered="false" name="A_URCB_6">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_7" confRev="1" buffered="false" name="A_URCB_7">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_8" confRev="1" buffered="false" name="A_URCB_8">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_9" confRev="1" buffered="false" name="A_URCB_9">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_10" confRev="1" buffered="false" name="A_URCB_10">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_11" confRev="1" buffered="false" name="A_URCB_11">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_12" confRev="1" buffered="false" name="A_URCB_12">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_13" confRev="1" buffered="false" name="A_URCB_13">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_14" confRev="1" buffered="false" name="A_URCB_14">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_15" confRev="1" buffered="false" name="A_URCB_15">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_16" confRev="1" buffered="false" name="A_URCB_16">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_17" confRev="1" buffered="false" name="A_URCB_17">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_18" confRev="1" buffered="false" name="A_URCB_18">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_19" confRev="1" buffered="false" name="A_URCB_19">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_20" confRev="1" buffered="false" name="A_URCB_20">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_21" confRev="1" buffered="false" name="A_URCB_21">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_22" confRev="1" buffered="false" name="A_URCB_22">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_23" confRev="1" buffered="false" name="A_URCB_23">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_24" confRev="1" buffered="false" name="A_URCB_24">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_25" confRev="1" buffered="false" name="A_URCB_25">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_26" confRev="1" buffered="false" name="A_URCB_26">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_27" confRev="1" buffered="false" name="A_URCB_27">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_28" confRev="1" buffered="false" name="A_URCB_28">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$RP$A_URCB_29" confRev="1" buffered="false" name="A_URCB_29">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB" confRev="1" buffered="true" name="A_BRCB">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_1" confRev="1" buffered="true" name="A_BRCB_1">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_2" confRev="1" buffered="true" name="A_BRCB_2">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_3" confRev="1" buffered="true" name="A_BRCB_3">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_4" confRev="1" buffered="true" name="A_BRCB_4">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_5" confRev="1" buffered="true" name="A_BRCB_5">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_6" confRev="1" buffered="true" name="A_BRCB_6">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_7" confRev="1" buffered="true" name="A_BRCB_7">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_8" confRev="1" buffered="true" name="A_BRCB_8">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_9" confRev="1" buffered="true" name="A_BRCB_9">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_10" confRev="1" buffered="true" name="A_BRCB_10">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_11" confRev="1" buffered="true" name="A_BRCB_11">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_12" confRev="1" buffered="true" name="A_BRCB_12">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_13" confRev="1" buffered="true" name="A_BRCB_13">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_14" confRev="1" buffered="true" name="A_BRCB_14">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_15" confRev="1" buffered="true" name="A_BRCB_15">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_16" confRev="1" buffered="true" name="A_BRCB_16">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_17" confRev="1" buffered="true" name="A_BRCB_17">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_18" confRev="1" buffered="true" name="A_BRCB_18">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_19" confRev="1" buffered="true" name="A_BRCB_19">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_20" confRev="1" buffered="true" name="A_BRCB_20">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_21" confRev="1" buffered="true" name="A_BRCB_21">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_22" confRev="1" buffered="true" name="A_BRCB_22">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_23" confRev="1" buffered="true" name="A_BRCB_23">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl rptID="E12B_PIUApplication/LLN0$BR$A_BRCB_24" confRev="1" buffered="true" name="A_BRCB_24">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<DOI name="Mod" desc="Applikationsmodus" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft (61850)" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="LEDRs" desc="LED rücksetzen">
							<SDI name="Oper">
								<DAI name="ctlVal" />
							</SDI>
						</DOI>
						<DOI name="LocKey" desc="Sch.hoh. Schlüss/Par">
							<DAI name="dataNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="LocSta" desc="Schalthoheit Station">
							<DAI name="dataNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
							<SDI name="Oper">
								<DAI name="ctlVal" />
							</SDI>
						</DOI>
						<DOI name="MltLev" desc="Mehre.Sch.hoheitsebenen">
							<DAI name="setVal">
								<Val>false</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<SettingControl numOfSGs="1" actSG="1">
							<Private type="Siemens-MasterId">36785c54-cc0c-4f8e-a05b-dbbc1b24b35a</Private>
						</SettingControl>
					</LN0>
					<LN prefix="" lnClass="LPHD" inst="0" lnType="SIPROTEC5_LNType_LPHD" desc="Gerät">
						<Private type="Siemens-MasterId">40b7995b-579e-4308-a02f-36ad8c2b9773</Private>
						<DOI name="PhyNam" desc="Phys. Gerätename">
							<DAI name="vendor">
								<Val>SIEMENS</Val>
							</DAI>
							<DAI name="hwRev">
								<Val>7SJ85-DAAA-AA0-0AAAA0-AM0111-13111B-DBD000-000AC0-CB2BA1</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V08.80</Val>
							</DAI>
							<DAI name="model">
								<Val>7SJ85</Val>
							</DAI>
							<DAI name="d">
								<Val>SIEMENS SIPROTEC 5</Val>
							</DAI>
						</DOI>
						<DOI name="PhyHealth" desc="Gerätestatus" />
						<DOI name="Proxy" desc="Proxy" />
						<DOI name="PwrUp" desc="Gerätestart" />
						<DOI name="Sim" desc="GOOSE/SV Sim. mod." />
						<DOI name="OpTmh" desc="Gerätebetriebsstd.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>h</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
						</DOI>
						<DOI name="PrcModIna" desc="Prozessmodus n.aktiv" />
					</LN>
					<LN prefix="" lnClass="CALH" inst="0" lnType="SIPROTEC5_LNType_CALH_Application" desc="Alarmbehandlg.">
						<Private type="Siemens-MasterId">95ee4aaf-435e-4e5f-8f98-174791c77e90</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
						</DOI>
						<DOI name="GrAlm" desc="Gruppenalarm" />
						<DOI name="GrWrn" desc="Gruppenwarnung" />
						<DOI name="GrInd" desc="Gruppenmeldung" />
					</LN>
					<LN prefix="" lnClass="LTIM" inst="0" lnType="SIPROTEC5_LNType_LTIM_Application" desc="Zeitführung">
						<Private type="Siemens-MasterId">d3c965b6-8f58-49a7-bdf5-1e2c60bb1e74</Private>
						<DOI name="Mod" desc="Modus (nur Status)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
						</DOI>
						<DOI name="TmDT" desc="Sommerzeit" />
						<DOI name="TmOfsTmm" desc="Offset Zeitzone zu UTC">
							<DAI name="setVal">
								<Val>60</Val>
							</DAI>
							<DAI name="minVal">
								<Val>-720</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>840</Val>
							</DAI>
							<DAI name="stepSize">
								<Val>15</Val>
							</DAI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>min</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="TmUseDT" desc="Sommerzeitumschaltung">
							<DAI name="setVal">
								<Val>true</Val>
							</DAI>
						</DOI>
						<DOI name="TmChgDT" desc="Beginn Sommerzeit">
							<SDI name="setCal">
								<DAI name="occ">
									<Val>0</Val>
								</DAI>
								<DAI name="occType">
									<Val>WeekDay</Val>
								</DAI>
								<DAI name="occPer">
									<Val>Year</Val>
								</DAI>
								<DAI name="weekDay">
									<Val>Sunday</Val>
								</DAI>
								<DAI name="month">
									<Val>March</Val>
								</DAI>
								<DAI name="day">
									<Val>0</Val>
								</DAI>
								<DAI name="hr">
									<Val>2</Val>
								</DAI>
								<DAI name="mn">
									<Val>0</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="TmChgST" desc="Ende Sommerzeit">
							<SDI name="setCal">
								<DAI name="occ">
									<Val>0</Val>
								</DAI>
								<DAI name="occType">
									<Val>WeekDay</Val>
								</DAI>
								<DAI name="occPer">
									<Val>Year</Val>
								</DAI>
								<DAI name="weekDay">
									<Val>Sunday</Val>
								</DAI>
								<DAI name="month">
									<Val>October</Val>
								</DAI>
								<DAI name="day">
									<Val>0</Val>
								</DAI>
								<DAI name="hr">
									<Val>3</Val>
								</DAI>
								<DAI name="mn">
									<Val>0</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
					<LN prefix="" lnClass="LTMS" inst="0" lnType="SIPROTEC5_LNType_LTMS_Application" desc="Zeitsynch.">
						<Private type="Siemens-MasterId">bfba69fe-686f-47a8-9cb0-83ada4c9d3af</Private>
						<DOI name="Mod" desc="Modus (nur Status)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
						</DOI>
						<DOI name="TmSrc" desc="Zeitquelle">
							<DAI name="stVal">
								<Val>not supported</Val>
							</DAI>
						</DOI>
						<DOI name="TmSrcTyp" desc="Typ der Zeitquelle">
							<DAI name="stVal">
								<Val>Unknown</Val>
							</DAI>
						</DOI>
						<DOI name="TmChSt1" desc="Status Zeitquelle 1" />
						<DOI name="TmChSt2" desc="Status Zeitquelle 2" />
					</LN>
					<LN prefix="" lnClass="LTRK" inst="0" lnType="SIPROTEC5_LNType_LTRK_Application" desc="Service-Nachv.">
						<Private type="Siemens-MasterId">10babe4d-f1d5-47c0-bbec-fb4d235d5958</Private>
						<DOI name="Mod" desc="Modus (nur Status)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
						</DOI>
						<DOI name="GenTrk" desc="Allg. Service-Zugriff" />
						<DOI name="SgcbTrk" desc="Param.gruppen-Zugriff" />
					</LN>
					<LN prefix="RSLED" lnClass="GAPC" inst="0" lnType="SIPROTEC5_LNType_ResetLed" desc="LED n. in FG">
						<Private type="Siemens-MasterId">4559f106-2963-4210-af94-e0b9c445f501</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="Binär-EA" inst="BinIO">
					<Private type="Siemens-MasterId">2dbf8c8f-9527-4f38-97af-60b78299bce3</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="BinIO/LLN0">
						<Private type="Siemens-MasterId">54a3ef39-ad35-4896-a6a5-f6a41bef492b</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
				</LDevice>
				<LDevice desc="Binär-EA_BE" inst="BinIO_BinaryInputs">
					<Private type="Siemens-MasterId">297f8dcd-6e6d-46c6-a11b-1e6d6904301a</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="BinIO_BinaryInputs/LLN0">
						<Private type="Siemens-MasterId">3f374d4f-217a-40f8-9103-0ba94d214274</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@BinIO</Val>
							</DAI>
						</DOI>
					</LN0>
				</LDevice>
				<LDevice desc="Binär-EA_BA" inst="BinIO_BinaryOutputs">
					<Private type="Siemens-MasterId">5fb0460f-8e7a-4c96-b298-fb20cfee29de</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="BinIO_BinaryOutputs/LLN0">
						<Private type="Siemens-MasterId">88def7a6-9041-403c-aba7-da2116bfec96</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@BinIO</Val>
							</DAI>
						</DOI>
					</LN0>
				</LDevice>
				<LDevice desc="J:Onboard Ethernet" inst="Mod1">
					<Private type="Siemens-MasterId">3d9f990f-d386-4ab1-81c7-4780bcf196d8</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Mod1/LLN0">
						<Private type="Siemens-MasterId">c299b423-f421-4513-94b4-f2cc2835b913</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
				</LDevice>
				<LDevice desc="J:Onboard Ethernet_Kan.1" inst="Mod1_Channel1">
					<Private type="Siemens-MasterId">b4f4bc04-5b39-4815-98ed-7a0bb0e16e10</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Mod1_Channel1/LLN0">
						<Private type="Siemens-MasterId">c57e055b-72c0-45aa-88e1-b740b0a36a6c</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Mod1</Val>
							</DAI>
						</DOI>
					</LN0>
				</LDevice>
				<LDevice desc="F:ETH-BD-2FO" inst="Mod2">
					<Private type="Siemens-MasterId">b789fba4-c947-4f5d-aa18-1760f06797cc</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Mod2/LLN0">
						<Private type="Siemens-MasterId">52197a50-b836-4036-ab8b-8c0b59ac1cb9</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
				</LDevice>
				<LDevice desc="F:ETH-BD-2FO_Kan.1" inst="Mod2_Channel1">
					<Private type="Siemens-MasterId">d4a0b00a-50d3-42ce-9677-f9870e8cafa8</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Mod2_Channel1/LLN0">
						<Private type="Siemens-MasterId">26fe5967-ae9c-4f2c-b1a9-ab7d869ed445</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Mod2</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN prefix="" lnClass="LCCH" inst="1" lnType="SIPROTEC5_LNType_LCCH_61850" desc="IEC 61850-8-1">
						<Private type="Siemens-MasterId">4b3dd64e-4445-4935-b263-434e16723077</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:58:10</Val>
							</DAI>
						</DOI>
						<DOI name="ChLiv" desc="Kanal Lebenszeichen" />
					</LN>
					<LN prefix="RSTP_" lnClass="LCCH" inst="1" lnType="SIPROTEC5_LNType_LCCH_RSTP" desc="RSTP">
						<Private type="Siemens-MasterId">ff4dfeb0-37a5-438b-831f-e6d9b5149409</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:58:10</Val>
							</DAI>
						</DOI>
						<DOI name="ChLiv" desc="Kanal Lebenszeichen" />
						<DOI name="RedChLiv" desc="red. Kanal Lebensz." />
					</LN>
				</LDevice>
				<LDevice desc="E:ETH-BD-2FO" inst="Mod3">
					<Private type="Siemens-MasterId">0b2d2398-70d4-4dda-863c-46a23be6d6a6</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Mod3/LLN0">
						<Private type="Siemens-MasterId">9a07e3ec-fe62-4d5a-8717-2be085990b4a</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
				</LDevice>
				<LDevice desc="E:ETH-BD-2FO_Kan.1" inst="Mod3_Channel1">
					<Private type="Siemens-MasterId">552716bb-b072-406a-9a5e-2c62ad2a9726</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Mod3_Channel1/LLN0">
						<Private type="Siemens-MasterId">795c8611-29cf-4b8c-aac3-c4d5414e2e25</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Mod3</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN prefix="" lnClass="LCCH" inst="1" lnType="SIPROTEC5_LNType_LCCH_61850" desc="IEC 61850-8-1">
						<Private type="Siemens-MasterId">94c20049-8794-42b6-b2ae-6a40f8322fb2</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:58:10</Val>
							</DAI>
						</DOI>
						<DOI name="ChLiv" desc="Kanal Lebenszeichen" />
					</LN>
					<LN prefix="PRP_" lnClass="LCCH" inst="1" lnType="SIPROTEC5_LNType_LCCH_RSTP" desc="PRP">
						<Private type="Siemens-MasterId">728b7762-58b6-408e-8ff8-b0d04116b200</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:58:10</Val>
							</DAI>
						</DOI>
						<DOI name="ChLiv" desc="Kanal Lebenszeichen" />
						<DOI name="RedChLiv" desc="red. Kanal Lebensz." />
					</LN>
					<LN prefix="IEEE1588_" lnClass="LCCH" inst="1" lnType="SIPROTEC5_LNType_LCCH_61850" desc="IEEE 1588">
						<Private type="Siemens-MasterId">dee3ec3e-43c8-4478-9977-84d574738b1d</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:58:10</Val>
							</DAI>
						</DOI>
						<DOI name="ChLiv" desc="Kanal Lebenszeichen" />
					</LN>
					<LN lnClass="LCCH" inst="1" lnType="SIPROTEC5_LNType_LCCH_61850" desc="9-2 Merg.Unit" prefix="PBMU_">
						<Private type="Siemens-MasterId">5dcd6e87-f738-464d-858b-109343024f4e</Private>
						<DOI name="Mod" desc="Modus (nur Status)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-12-16 07:29:21</Val>
							</DAI>
						</DOI>
						<DOI name="ChLiv" desc="Kanal Lebenszeichen" />
					</LN>
				</LDevice>
				<LDevice desc="AnDa" inst="PowS">
					<Private type="Siemens-MasterId">658d3a3f-2c69-4507-9751-37584c9ad6b1</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PowS/LLN0">
						<Private type="Siemens-MasterId">f4a24dfb-7ea1-400d-baf8-80b4637ce175</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN prefix="" lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_ResetLed" desc="Allgemein">
						<Private type="Siemens-MasterId">2f2f651b-23c6-47a6-826e-8d20b21a56bf</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="AnDa_MSI3p1" inst="PowS_MeasPointI3ph1">
					<Private type="Siemens-MasterId">344667eb-e1d3-4802-9c51-be4e684f0236</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PowS_MeasPointI3ph1/LLN0">
						<Private type="Siemens-MasterId">61124188-4526-4729-b8c8-ff8b4b65817e</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@PowS</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN prefix="CT3P_" lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_ResetLed" desc="I-Wandler 3-ph">
						<Private type="Siemens-MasterId">d0d7b3b6-dc0f-4566-bb0e-9e456727e14d</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="AnDa_MSU3p1" inst="PowS_MeasPointV3ph1">
					<Private type="Siemens-MasterId">8cfcf88b-2310-4049-95d6-ecd66f5a0681</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PowS_MeasPointV3ph1/LLN0">
						<Private type="Siemens-MasterId">a3d29126-4e37-4d0e-8ada-a4637e44aeba</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@PowS</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN prefix="VT3P_" lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_ResetLed" desc="U-Wandler 3-ph">
						<Private type="Siemens-MasterId">fef93d76-0ce3-4839-a87e-838b233c1f35</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="Rek" inst="Rec">
					<Private type="Siemens-MasterId">0c1136c9-a589-4d11-b7fc-751710c1b70b</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Rec/LLN0">
						<Private type="Siemens-MasterId">4783bf17-45d9-4bd1-a225-048c7343d1ad</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN prefix="RCDG_" lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_ResetLed" desc="Allgemein">
						<Private type="Siemens-MasterId">17a80839-c8ee-4e12-82c2-58e74d7a9465</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="GFLG_" lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_ResetLed" desc="Erdschlussmel.">
						<Private type="Siemens-MasterId">7e99ae95-c428-44be-bf12-b34eaeed6c25</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="Rek_StoRek" inst="Rec_FaultRecorder">
					<Private type="Siemens-MasterId">67eb9d74-b236-4c1d-a8d2-ca0981479e3b</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Rec_FaultRecorder/LLN0">
						<Private type="Siemens-MasterId">c026a468-da57-44b1-8201-4b3046113479</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Rec</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN prefix="RCDR_" lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_ResetLed" desc="Allgemein">
						<Private type="Siemens-MasterId">e59545b5-db67-4a69-9698-920302f56c16</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
						</DOI>
					</LN>
					<LN prefix="DEF_" lnClass="RDRE" inst="1" lnType="SIPROTEC5_LNType_RDRE_DEF" desc="Steuerung">
						<Private type="Siemens-MasterId">7ee615cb-af59-4d20-af78-5d1d528fa52c</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
						</DOI>
						<DOI name="RcdTrg" desc="Aufzeichnung starten" />
						<DOI name="MemRs" desc="Speicher zurücksetzen">
							<DAI name="operTimeout">
								<Val>30000</Val>
							</DAI>
						</DOI>
						<DOI name="MemClr" desc="Speicher löschen">
							<DAI name="operTimeout">
								<Val>30000</Val>
							</DAI>
						</DOI>
						<DOI name="RcdMade" desc="Aufzeichnung fertig" />
						<DOI name="FltNum" desc="Fehler-Nummer" />
						<DOI name="RcdStr" desc="Aufzeichnung gestart." />
					</LN>
				</LDevice>
				<LDevice desc="Schutzprüfung" inst="SchutzPruefung">
					<Private type="Siemens-MasterId">417f9dfd-0ede-41a7-a8fc-87088026b068</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="SchutzPruefung/LLN0">
						<Private type="Siemens-MasterId">aeeaf817-5838-40fa-a767-9c7be1450d6c</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-13 09:22:26</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_ResetLed" desc="Allgemein" prefix="">
						<Private type="Siemens-MasterId">cb26f19e-c733-4bbe-a69b-0d223a513613</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-13 09:22:26</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="XCBR" inst="1" lnType="SIPROTEC5_LNType_XCBR_3pol_CtlOnly" desc="Leistungssch." prefix="">
						<Private type="Siemens-MasterId">edd14506-0f99-479d-a24f-3c921b62f6dd</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-13 09:22:26</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" desc="Schalthoheit Vor-Ort" />
						<DOI name="EEHealth" desc="Externe Bereitschaft" />
						<DOI name="OpCnt" desc="S.sp.zä." />
						<DOI name="Pos" desc="Position">
							<SDI name="pulseConfig">
								<DAI name="cmdQual">
									<Val>pulse</Val>
								</DAI>
								<DAI name="onDur">
									<Val>100</Val>
								</DAI>
								<DAI name="offDur">
									<Val>0</Val>
								</DAI>
								<DAI name="numPls">
									<Val>1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="BlkOpn" desc="Block. Ausschaltung" />
						<DOI name="BlkCls" desc="Block. der Einschalt." />
					</LN>
					<LN lnClass="CSWI" inst="1" lnType="SIPROTEC5_LNType_CSWI" desc="Steuerung" prefix="">
						<Private type="Siemens-MasterId">93f759d7-b2db-4290-8527-843a597616f1</Private>
						<Private type="Siemens-LN-Dependency" />
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-13 09:22:26</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" desc="Schalthoheit Vor-Ort" />
						<DOI name="Pos" desc="Befehl mit Rückmeld.">
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="LocKey" desc="Sch.hoheit Schlüssel" />
						<DOI name="LocSta" desc="Schalthoheit Station">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="CILO" inst="1" lnType="SIPROTEC5_LNType_CILO" desc="Verriegelung" prefix="">
						<Private type="Siemens-MasterId">6e6134f2-347f-4c9a-8d41-d0411c187541</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-13 09:22:26</Val>
							</DAI>
						</DOI>
						<DOI name="EnaOpn" desc="&gt;Freig. Ausschaltung" />
						<DOI name="EnaCls" desc="&gt;Freig. Einschaltung" />
					</LN>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_ResetLed" desc="Reset LED FG" prefix="RSLED">
						<Private type="Siemens-MasterId">dfee9867-595e-4f11-9fc8-f99635879445</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-13 09:22:26</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="int_Schutzprüfung" inst="int_Schutz">
					<Private type="Siemens-MasterId">d85097ea-2a8b-4242-9ff0-2d94b8d20937</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="int_Schutz/LLN0">
						<Private type="Siemens-MasterId">397a2e67-f02d-4e8c-92e2-35f74b778142</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-14 10:00:53</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_ResetLed" desc="Reset LED FG" prefix="RSLED">
						<Private type="Siemens-MasterId">a240accd-aa8c-4321-bf7b-847fd74406e6</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-14 05:44:37</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="USER" inst="1" lnType="SIPROTEC5_1000" desc="Wert" prefix="">
						<Private type="Siemens-MasterId">269b0fb9-c1b3-4a6f-9c51-a37837b36c80</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-14 10:00:53</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>Siprotec5/user-defined</Val>
							</DAI>
						</DOI>
						<DOI name="INTwert" desc="Prüfung_Stufe">
							<DAI name="dataNs" />
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="Meldungen" inst="Meldungen">
					<Private type="Siemens-MasterId">d99191eb-05e8-48f7-aeb0-15a8e23bf4c1</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Meldungen/LLN0">
						<Private type="Siemens-MasterId">d1efb940-383d-4ce1-a1ce-2b05aa7ae063</Private>
						<DataSet name="Q32_Meldung">
							<Private type="Siemens-GUID">5606fedec9d94f5f9c784d7095d72e65</Private>
							<FCDA ldInst="Meldungen" prefix="" lnClass="TVTR" lnInst="4" doName="FuFail" daName="stVal" fc="ST" />
							<FCDA ldInst="Meldungen" prefix="" lnClass="TVTR" lnInst="4" doName="FuFail" daName="q" fc="ST" />
							<FCDA ldInst="Meldungen" prefix="" lnClass="USER" lnInst="1" doName="Motorspg" daName="stVal" fc="ST" />
							<FCDA ldInst="Meldungen" prefix="" lnClass="USER" lnInst="1" doName="Motorspg" daName="q" fc="ST" />
							<FCDA ldInst="Meldungen" prefix="" lnClass="SIMG" lnInst="1" doName="InsAlm" daName="stVal" fc="ST" />
							<FCDA ldInst="Meldungen" prefix="" lnClass="SIMG" lnInst="1" doName="InsAlm" daName="q" fc="ST" />
							<FCDA ldInst="Meldungen" prefix="" lnClass="USER" lnInst="1" doName="Schalterfall" daName="stVal" fc="ST" />
							<FCDA ldInst="Meldungen" prefix="" lnClass="USER" lnInst="1" doName="Schalterfall" daName="q" fc="ST" />
							<FCDA ldInst="Meldungen" prefix="" lnClass="USER" lnInst="1" doName="Federueber" daName="stVal" fc="ST" />
							<FCDA ldInst="Meldungen" prefix="" lnClass="USER" lnInst="1" doName="Federueber" daName="q" fc="ST" />
						</DataSet>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-10-25 06:11:34</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
						<GSEControl datSet="Q32_Meldung" confRev="60001" appID="E12B_PIU_Q32_Meldung" name="Q32_Meldung" type="GOOSE">
							<IEDName apRef="E">E12B_BPCU</IEDName>
						</GSEControl>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_ResetLed" desc="Reset LED FG" prefix="RSLED">
						<Private type="Siemens-MasterId">da4a1907-a061-4635-9be3-727bdf29fc30</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-10-25 06:11:34</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="USER" inst="1" lnType="SIPROTEC5_1006" desc="Gefahrenmeldung" prefix="">
						<Private type="Siemens-MasterId">976e5c4a-7cd3-4bda-9ff8-290d52cca1dc</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-10-25 06:11:34</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>Siprotec5/user-defined</Val>
							</DAI>
						</DOI>
						<DOI name="Motorspg" desc="Motorspgannung fehlt" />
						<DOI name="Federueber" desc="Federüberwachung" />
						<DOI name="Schalterfall" desc="Schalterfall" />
					</LN>
					<LN lnClass="SIMG" inst="1" lnType="SIPROTEC5_1004" desc="SIMG_Meldung" prefix="">
						<Private type="Siemens-MasterId">e9ca6a0e-5ec6-4ac1-88c5-837e684bec64</Private>
						<DOI name="Mod" desc="Modus (steuerbar)">
							<DAI name="stVal" />
						</DOI>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-11-15 12:03:12</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>Siprotec5/user-defined</Val>
							</DAI>
						</DOI>
						<DOI name="InsAlm" desc="InsAlm">
							<DAI name="dataNs" />
						</DOI>
					</LN>
					<LN lnClass="ZAXN" inst="3" lnType="SIPROTEC5_LNType_USER_Universal_4" desc="220V Motorspg." prefix="">
						<Private type="Siemens-MasterId">1ee440f0-2ea2-4f33-8267-f3265ff29768</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-11-18 10:01:16</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>Siprotec5/user-defined</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TVTR" inst="4" lnType="SIPROTEC5_LNType_USER_Universal_5" desc="Spannungswdl." prefix="">
						<Private type="Siemens-MasterId">90688e46-88aa-4287-8d8e-2813351b63fa</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-11-18 10:01:16</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="FuFail" desc="FuFail">
							<DAI name="dataNs" />
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="Erdungsschalter" inst="Erdungsschalter">
					<Private type="Siemens-MasterId">e963be53-37c4-4a9d-b49a-d8dc5c444d59</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Erdungsschalter/LLN0">
						<Private type="Siemens-MasterId">58f73171-c97b-4bcf-8ffc-66a95d812c79</Private>
						<DataSet name="DataSet">
							<Private type="Siemens-GUID">670f64bb871d4d0a99c8fedb3ee89fc0</Private>
							<FCDA ldInst="Erdungsschalter" prefix="" lnClass="XSWI" lnInst="1" doName="ETrm" daName="stVal" fc="ST" />
							<FCDA ldInst="Erdungsschalter" prefix="" lnClass="XSWI" lnInst="1" doName="ETrm" daName="q" fc="ST" />
							<FCDA ldInst="Trennschalter" prefix="" lnClass="XSWI" lnInst="1" doName="STrm" daName="stVal" fc="ST" />
							<FCDA ldInst="Trennschalter" prefix="" lnClass="XSWI" lnInst="1" doName="STrm" daName="q" fc="ST" />
							<FCDA ldInst="Leistungsschalter" prefix="" lnClass="XCBR" lnInst="1" doName="LSrm" daName="stVal" fc="ST" />
							<FCDA ldInst="Leistungsschalter" prefix="" lnClass="XCBR" lnInst="1" doName="LSrm" daName="q" fc="ST" />
						</DataSet>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-10-25 10:35:49</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
						<GSEControl datSet="DataSet" confRev="30001" appID="E12B_PIU/Erdungsschalter/LLN0/Control_DataSet" name="Control_DataSet" type="GOOSE">
							<IEDName apRef="E">E12B_BPCU</IEDName>
						</GSEControl>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_ResetLed" desc="Reset LED FG" prefix="RSLED">
						<Private type="Siemens-MasterId">2e20581b-a154-42a0-8601-33c2e73b0c82</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-10-25 10:35:49</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="XSWI" inst="1" lnType="SIPROTEC5_1001" desc="Steuerung" prefix="">
						<Private type="Siemens-MasterId">7529cc36-25cc-4890-aa36-1d9d6f6b9b4b</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-10-25 10:35:49</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>Siprotec5/user-defined</Val>
							</DAI>
						</DOI>
						<DOI name="ETaus" desc="ETaus">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="ETein" desc="ETein">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="ETrm" desc="ETrm" />
						<Inputs>
							<ExtRef desc="ETaus" intAddr="ETaus;/Ind/stVal" serviceType="GOOSE" iedName="E12B_BPCU" ldInst="Erdungsschalter" lnClass="XSWI" lnInst="1" doName="OpnCmd" daName="stVal" srcLDInst="Leistungsschalter" srcLNClass="LLN0" srcCBName="Q32_Steuerung" pServT="GOOSE" pDO="Ind" pDA="stVal" />
							<ExtRef desc="ETaus" intAddr="ETaus;/Ind/q" serviceType="GOOSE" iedName="E12B_BPCU" ldInst="Erdungsschalter" lnClass="XSWI" lnInst="1" doName="OpnCmd" daName="q" srcLDInst="Leistungsschalter" srcLNClass="LLN0" srcCBName="Q32_Steuerung" pServT="GOOSE" pDO="Ind" pDA="q" />
							<ExtRef desc="ETaus" intAddr="ETaus;/Ind/t" serviceType="GOOSE" pServT="GOOSE" pDO="Ind" pDA="t" />
							<ExtRef desc="ETein" intAddr="ETein;/Ind/stVal" serviceType="GOOSE" iedName="E12B_BPCU" ldInst="Erdungsschalter" lnClass="XSWI" lnInst="1" doName="ClsCmd" daName="stVal" srcLDInst="Leistungsschalter" srcLNClass="LLN0" srcCBName="Q32_Steuerung" pServT="GOOSE" pDO="Ind" pDA="stVal" />
							<ExtRef desc="ETein" intAddr="ETein;/Ind/q" serviceType="GOOSE" iedName="E12B_BPCU" ldInst="Erdungsschalter" lnClass="XSWI" lnInst="1" doName="ClsCmd" daName="q" srcLDInst="Leistungsschalter" srcLNClass="LLN0" srcCBName="Q32_Steuerung" pServT="GOOSE" pDO="Ind" pDA="q" />
							<ExtRef desc="ETein" intAddr="ETein;/Ind/t" serviceType="GOOSE" pServT="GOOSE" pDO="Ind" pDA="t" />
						</Inputs>
					</LN>
				</LDevice>
				<LDevice desc="Leistungsschalter" inst="Leistungsschalter">
					<Private type="Siemens-MasterId">d2ac7367-eb47-4d88-be1e-60f39e1b779c</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Leistungsschalter/LLN0">
						<Private type="Siemens-MasterId">b2e2a140-ac49-475d-aa66-60d1f2a40fec</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-10-25 10:35:49</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_ResetLed" desc="Reset LED FG" prefix="RSLED">
						<Private type="Siemens-MasterId">fbb2ab80-9bbf-4c5a-8119-c1346ebbc87a</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-10-25 10:35:49</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="XCBR" inst="1" lnType="SIPROTEC5_LNType_USER_Universal_1" desc="Steuerung" prefix="">
						<Private type="Siemens-MasterId">15e70c82-0697-4649-a05e-b9b2abd0a258</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-10-25 10:35:49</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>Siprotec5/user-defined</Val>
							</DAI>
						</DOI>
						<DOI name="LSaus" desc="LSaus">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="LSein" desc="LSein">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="LSrm" desc="LSrm" />
						<Inputs>
							<ExtRef desc="LSaus" intAddr="LSaus;/Ind/stVal" serviceType="GOOSE" iedName="E12B_BPCU" ldInst="Leistungsschalter" lnClass="XCBR" lnInst="1" doName="TripOpnCmd" daName="stVal" srcLDInst="Leistungsschalter" srcLNClass="LLN0" srcCBName="Q32_Steuerung" pServT="GOOSE" pDO="Ind" pDA="stVal" />
							<ExtRef desc="LSaus" intAddr="LSaus;/Ind/q" serviceType="GOOSE" iedName="E12B_BPCU" ldInst="Leistungsschalter" lnClass="XCBR" lnInst="1" doName="TripOpnCmd" daName="q" srcLDInst="Leistungsschalter" srcLNClass="LLN0" srcCBName="Q32_Steuerung" pServT="GOOSE" pDO="Ind" pDA="q" />
							<ExtRef desc="LSaus" intAddr="LSaus;/Ind/t" serviceType="GOOSE" pServT="GOOSE" pDO="Ind" pDA="t" />
							<ExtRef desc="LSein" intAddr="LSein;/Ind/stVal" serviceType="GOOSE" iedName="E12B_BPCU" ldInst="Leistungsschalter" lnClass="XCBR" lnInst="1" doName="ClsCmd" daName="stVal" srcLDInst="Leistungsschalter" srcLNClass="LLN0" srcCBName="Q32_Steuerung" pServT="GOOSE" pDO="Ind" pDA="stVal" />
							<ExtRef desc="LSein" intAddr="LSein;/Ind/q" serviceType="GOOSE" iedName="E12B_BPCU" ldInst="Leistungsschalter" lnClass="XCBR" lnInst="1" doName="ClsCmd" daName="q" srcLDInst="Leistungsschalter" srcLNClass="LLN0" srcCBName="Q32_Steuerung" pServT="GOOSE" pDO="Ind" pDA="q" />
							<ExtRef desc="LSein" intAddr="LSein;/Ind/t" serviceType="GOOSE" pServT="GOOSE" pDO="Ind" pDA="t" />
						</Inputs>
					</LN>
				</LDevice>
				<LDevice desc="E:ETH-BD-2FO_MU 1" inst="Mod3_MU1">
					<Private type="Siemens-MasterId">9e34cd3f-7bcc-4dc1-95b7-0743f846ec3c</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Mod3_MU1/LLN0">
						<Private type="Siemens-MasterId">b15973cd-95cc-481f-ace2-1ffd3b41aa20</Private>
						<DataSet name="PhsMeas1">
							<Private type="Siemens-GUID">00db5b97-2bb6-4fc7-9a84-305ba49751b6</Private>
							<FCDA ldInst="Mod3_MU1" prefix="I01A" lnClass="TCTR" lnInst="1" doName="AmpSv" daName="instMag.i" fc="MX" />
							<FCDA ldInst="Mod3_MU1" prefix="I01A" lnClass="TCTR" lnInst="1" doName="AmpSv" daName="q" fc="MX" />
							<FCDA ldInst="Mod3_MU1" prefix="I01B" lnClass="TCTR" lnInst="2" doName="AmpSv" daName="instMag.i" fc="MX" />
							<FCDA ldInst="Mod3_MU1" prefix="I01B" lnClass="TCTR" lnInst="2" doName="AmpSv" daName="q" fc="MX" />
							<FCDA ldInst="Mod3_MU1" prefix="I01C" lnClass="TCTR" lnInst="3" doName="AmpSv" daName="instMag.i" fc="MX" />
							<FCDA ldInst="Mod3_MU1" prefix="I01C" lnClass="TCTR" lnInst="3" doName="AmpSv" daName="q" fc="MX" />
							<FCDA ldInst="Mod3_MU1" prefix="I01N" lnClass="TCTR" lnInst="4" doName="AmpSv" daName="instMag.i" fc="MX" />
							<FCDA ldInst="Mod3_MU1" prefix="I01N" lnClass="TCTR" lnInst="4" doName="AmpSv" daName="q" fc="MX" />
							<FCDA ldInst="Mod3_MU1" prefix="U01A" lnClass="TVTR" lnInst="1" doName="VolSv" daName="instMag.i" fc="MX" />
							<FCDA ldInst="Mod3_MU1" prefix="U01A" lnClass="TVTR" lnInst="1" doName="VolSv" daName="q" fc="MX" />
							<FCDA ldInst="Mod3_MU1" prefix="U01B" lnClass="TVTR" lnInst="2" doName="VolSv" daName="instMag.i" fc="MX" />
							<FCDA ldInst="Mod3_MU1" prefix="U01B" lnClass="TVTR" lnInst="2" doName="VolSv" daName="q" fc="MX" />
							<FCDA ldInst="Mod3_MU1" prefix="U01C" lnClass="TVTR" lnInst="3" doName="VolSv" daName="instMag.i" fc="MX" />
							<FCDA ldInst="Mod3_MU1" prefix="U01C" lnClass="TVTR" lnInst="3" doName="VolSv" daName="q" fc="MX" />
							<FCDA ldInst="Mod3_MU1" prefix="U01N" lnClass="TVTR" lnInst="4" doName="VolSv" daName="instMag.i" fc="MX" />
							<FCDA ldInst="Mod3_MU1" prefix="U01N" lnClass="TVTR" lnInst="4" doName="VolSv" daName="q" fc="MX" />
						</DataSet>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-12-16 07:29:21</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Mod3</Val>
							</DAI>
						</DOI>
						<SampledValueControl name="MSVCB01" datSet="PhsMeas1" confRev="1" smvID="SMV_E12B" multicast="true" smpRate="80" nofASDU="1" smpMod="SmpPerPeriod">
							<IEDName apRef="E">E12B_BPCU</IEDName>
							<SmvOpts refreshTime="false" sampleSynchronized="true" sampleRate="false" dataSet="false" security="false" synchSourceId="false" />
						</SampledValueControl>
					</LN0>
					<LN lnClass="LPHD" inst="1" lnType="SIPROTEC5_1021" desc="Gerät MU" prefix="">
						<Private type="Siemens-MasterId">f443d7be-8e3b-4222-9bbc-debc144333f3</Private>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-12-16 07:29:21</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="PhyNam" desc="Phys. Gerätename">
							<DAI name="vendor">
								<Val>SIEMENS</Val>
							</DAI>
							<DAI name="d">
								<Val>SIEMENS SIPROTEC 5 Merging unit</Val>
							</DAI>
						</DOI>
						<DOI name="PhyHealth" desc="Gerätestatus" />
						<DOI name="Proxy" desc="Proxy" />
						<DOI name="MaxDl" desc="Max.Verzög.zeit Abtastw.">
							<DAI name="setVal">
								<Val>1150</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
							<DAI name="stepSize">
								<Val>1</Val>
							</DAI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>µ</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="NamVariant" desc="NamVariant">
							<DAI name="val">
								<Val>F4000S1I0-24U0-24;F4800S1-2I0-24U0-24;F14400S6I0-24U0-24;F12800S8I0-24U0-24;F15360S8I0-24U0-24;</Val>
							</DAI>
						</DOI>
						<DOI name="NamHzRtg" desc="NamHzRtg">
							<DAI name="val">
								<Val>50;60</Val>
							</DAI>
						</DOI>
						<DOI name="NamHoldRtg" desc="NamHoldRtg">
							<DAI name="val">
								<Val>0-3600</Val>
							</DAI>
						</DOI>
						<DOI name="NamMaxDlRtg" desc="NamMaxDlRtg">
							<DAI name="val">
								<Val>1150</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TCTR" inst="1" lnType="SIPROTEC5_1022" desc="Stromwandler 1" prefix="I01A">
						<Private type="Siemens-MasterId">547f3cfc-df37-4076-96f8-8907886d34e8</Private>
						<DOI name="Mod" desc="Modus (nur Status)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="Nennstrom, primär">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1000</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1000</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Nennfrequenz">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Amplitudenkorrektur">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Abtastwerte Strom">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Genauigkeitsklasse">
							<DAI name="setVal">
								<Val>TPS</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Sek. Schleifenzeitkonst.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Verh. Höchstwertbegr.">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Genauigkeitsklasse Mess.">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Genauigkeitskl. Schutz">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Haltezeit">
							<DAI name="setVal">
								<Val>1000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TCTR" inst="2" lnType="SIPROTEC5_1022" desc="Stromwandler 2" prefix="I01B">
						<Private type="Siemens-MasterId">c2d75322-d318-4e62-8c3b-1f7e91927627</Private>
						<DOI name="Mod" desc="Modus (nur Status)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="Nennstrom, primär">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1000</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1000</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Nennfrequenz">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Amplitudenkorrektur">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Abtastwerte Strom">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Genauigkeitsklasse">
							<DAI name="setVal">
								<Val>TPS</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Sek. Schleifenzeitkonst.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Verh. Höchstwertbegr.">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Genauigkeitsklasse Mess.">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Genauigkeitskl. Schutz">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Haltezeit">
							<DAI name="setVal">
								<Val>1000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TCTR" inst="3" lnType="SIPROTEC5_1022" desc="Stromwandler 3" prefix="I01C">
						<Private type="Siemens-MasterId">7bd82ff3-1214-4fb4-95df-7abb93227117</Private>
						<DOI name="Mod" desc="Modus (nur Status)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="Nennstrom, primär">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1000</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1000</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Nennfrequenz">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Amplitudenkorrektur">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Abtastwerte Strom">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Genauigkeitsklasse">
							<DAI name="setVal">
								<Val>TPS</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Sek. Schleifenzeitkonst.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Verh. Höchstwertbegr.">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Genauigkeitsklasse Mess.">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Genauigkeitskl. Schutz">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Haltezeit">
							<DAI name="setVal">
								<Val>1000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TCTR" inst="4" lnType="SIPROTEC5_1022" desc="Stromwandler 4" prefix="I01N">
						<Private type="Siemens-MasterId">41d0c5af-0765-4660-9e8d-0e9652a543cb</Private>
						<DOI name="Mod" desc="Modus (nur Status)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="Nennstrom, primär">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1000</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1000</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Nennfrequenz">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Amplitudenkorrektur">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Abtastwerte Strom">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Genauigkeitsklasse">
							<DAI name="setVal">
								<Val>TPS</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Sek. Schleifenzeitkonst.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Verh. Höchstwertbegr.">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1.6</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Genauigkeitsklasse Mess.">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Genauigkeitskl. Schutz">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Haltezeit">
							<DAI name="setVal">
								<Val>1000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TVTR" inst="1" lnType="SIPROTEC5_1023" desc="Spannungswdl.1" prefix="U01A">
						<Private type="Siemens-MasterId">2911f528-12d4-4a70-aace-ec45e14f4f09</Private>
						<DOI name="Mod" desc="Modus (nur Status)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="VolSv" desc="Abtastwerte Spannung">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VRtg" desc="Nennspannung, primär">
							<SDI name="setMag">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.2</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>1200</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Nennfrequenz">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Amplitudenkorrektur">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Clip" desc="Verh. Höchstwertbegr.">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Genauigkeitsklasse Mess.">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Genauigkeitskl. Schutz">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Haltezeit">
							<DAI name="setVal">
								<Val>1000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5/3P</Val>
							</DAI>
						</DOI>
						<DOI name="NamVRtg" desc="NamVRtg">
							<DAI name="val">
								<Val>173000</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>2</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TVTR" inst="2" lnType="SIPROTEC5_1023" desc="Spannungswdl.2" prefix="U01B">
						<Private type="Siemens-MasterId">c6459240-138a-4aa0-a17d-1f1c1f8cf45b</Private>
						<DOI name="Mod" desc="Modus (nur Status)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="VolSv" desc="Abtastwerte Spannung">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VRtg" desc="Nennspannung, primär">
							<SDI name="setMag">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.2</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>1200</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Nennfrequenz">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Amplitudenkorrektur">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Clip" desc="Verh. Höchstwertbegr.">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Genauigkeitsklasse Mess.">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Genauigkeitskl. Schutz">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Haltezeit">
							<DAI name="setVal">
								<Val>1000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5/3P</Val>
							</DAI>
						</DOI>
						<DOI name="NamVRtg" desc="NamVRtg">
							<DAI name="val">
								<Val>173000</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>2</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TVTR" inst="3" lnType="SIPROTEC5_1023" desc="Spannungswdl.3" prefix="U01C">
						<Private type="Siemens-MasterId">c4dbc097-06d5-430c-9e6b-7bf196dd982f</Private>
						<DOI name="Mod" desc="Modus (nur Status)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="VolSv" desc="Abtastwerte Spannung">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VRtg" desc="Nennspannung, primär">
							<SDI name="setMag">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.2</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>1200</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Nennfrequenz">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Amplitudenkorrektur">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Clip" desc="Verh. Höchstwertbegr.">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Genauigkeitsklasse Mess.">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Genauigkeitskl. Schutz">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Haltezeit">
							<DAI name="setVal">
								<Val>1000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5/3P</Val>
							</DAI>
						</DOI>
						<DOI name="NamVRtg" desc="NamVRtg">
							<DAI name="val">
								<Val>173000</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>2</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TVTR" inst="4" lnType="SIPROTEC5_1023" desc="Spannungswdl.4" prefix="U01N">
						<Private type="Siemens-MasterId">52b7b361-fb3b-41d3-a4e8-b0958f7cb6bb</Private>
						<DOI name="Mod" desc="Modus (nur Status)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-09-01 09:47:05</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="VolSv" desc="Abtastwerte Spannung">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VRtg" desc="Nennspannung, primär">
							<SDI name="setMag">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.2</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>1200</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Nennfrequenz">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>57.8034668</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Amplitudenkorrektur">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Clip" desc="Verh. Höchstwertbegr.">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Genauigkeitsklasse Mess.">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Genauigkeitskl. Schutz">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Haltezeit">
							<DAI name="setVal">
								<Val>1000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5/3P</Val>
							</DAI>
						</DOI>
						<DOI name="NamVRtg" desc="NamVRtg">
							<DAI name="val">
								<Val>173000</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>2</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="Trennschalter" inst="Trennschalter">
					<Private type="Siemens-MasterId">92601109-2b38-4e85-9edc-034aed11b661</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Trennschalter/LLN0">
						<Private type="Siemens-MasterId">460b94b6-66ff-4204-866a-ff03f3ab44e5</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-10-25 10:35:49</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_ResetLed" desc="Reset LED FG" prefix="RSLED">
						<Private type="Siemens-MasterId">69cc65d5-f4ff-4b70-b5fa-b8fe201182d5</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-10-25 10:35:49</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="XSWI" inst="1" lnType="SIPROTEC5_LNType_USER_Universal_6" desc="Steuerung" prefix="">
						<Private type="Siemens-MasterId">a2514dec-2eb7-4f7c-98e1-98842062a86f</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-10-25 10:35:49</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>Siprotec5/user-defined</Val>
							</DAI>
						</DOI>
						<DOI name="STaus" desc="STaus">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="STein" desc="STein">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="STrm" desc="STrm" />
						<Inputs>
							<ExtRef desc="STaus" intAddr="STaus;/Ind/stVal" serviceType="GOOSE" iedName="E12B_BPCU" ldInst="Trennschalter" lnClass="XSWI" lnInst="1" doName="OpnCmd" daName="stVal" srcLDInst="Leistungsschalter" srcLNClass="LLN0" srcCBName="Q32_Steuerung" pServT="GOOSE" pDO="Ind" pDA="stVal" />
							<ExtRef desc="STaus" intAddr="STaus;/Ind/q" serviceType="GOOSE" iedName="E12B_BPCU" ldInst="Trennschalter" lnClass="XSWI" lnInst="1" doName="OpnCmd" daName="q" srcLDInst="Leistungsschalter" srcLNClass="LLN0" srcCBName="Q32_Steuerung" pServT="GOOSE" pDO="Ind" pDA="q" />
							<ExtRef desc="STaus" intAddr="STaus;/Ind/t" serviceType="GOOSE" pServT="GOOSE" pDO="Ind" pDA="t" />
							<ExtRef desc="STein" intAddr="STein;/Ind/stVal" serviceType="GOOSE" iedName="E12B_BPCU" ldInst="Trennschalter" lnClass="XSWI" lnInst="1" doName="ClsCmd" daName="stVal" srcLDInst="Leistungsschalter" srcLNClass="LLN0" srcCBName="Q32_Steuerung" pServT="GOOSE" pDO="Ind" pDA="stVal" />
							<ExtRef desc="STein" intAddr="STein;/Ind/q" serviceType="GOOSE" iedName="E12B_BPCU" ldInst="Trennschalter" lnClass="XSWI" lnInst="1" doName="ClsCmd" daName="q" srcLDInst="Leistungsschalter" srcLNClass="LLN0" srcCBName="Q32_Steuerung" pServT="GOOSE" pDO="Ind" pDA="q" />
							<ExtRef desc="STein" intAddr="STein;/Ind/t" serviceType="GOOSE" pServT="GOOSE" pDO="Ind" pDA="t" />
						</Inputs>
					</LN>
				</LDevice>
			</Server>
			<Services>
				<ClientServices goose="true" gsse="false" bufReport="false" unbufReport="false" readLog="false" sv="false" supportsLdName="true" maxGOOSE="128" rGOOSE="false" rSV="false" noIctBinding="false">
					<TimeSyncProt sntp="true" c37_238="false" other="false" iec61850_9_3="true" />
				</ClientServices>
				<DynAssociation max="6" />
				<DynDataSet max="30" maxAttributes="60" />
				<FileHandling />
				<ValueHandling setToRO="false" />
				<RedProt hsr="true" prp="true" rstp="true" />
				<CommProt ipv6="false" />
				<SMVsc max="0" />
			</Services>
		</AccessPoint>
		<AccessPoint desc="Port E" name="E" router="false" clock="false">
			<ServerAt apName="F" />
			<Services>
				<ClientServices goose="true" gsse="false" bufReport="false" unbufReport="false" readLog="false" sv="false" supportsLdName="true" maxGOOSE="128" rGOOSE="false" rSV="false" noIctBinding="false">
					<TimeSyncProt sntp="true" c37_238="false" other="false" iec61850_9_3="true" />
				</ClientServices>
				<DynAssociation max="6" />
				<DynDataSet max="30" maxAttributes="60" />
				<FileHandling />
				<ValueHandling setToRO="false" />
				<RedProt hsr="true" prp="true" rstp="true" />
				<CommProt ipv6="false" />
			</Services>
		</AccessPoint>
	</IED>
	<IED desc="E12B_BPCU" name="E12B_BPCU" type="7SJ85" manufacturer="SIEMENS" configVersion="V08.80.07" originalSclVersion="2007" originalSclRevision="B" owner="SCD_Siiipe_TEST" originalSclRelease="4">
		<Private type="Siemens-MasterId">edf473e9-fe82-49e4-b97e-6f79ee9d764c</Private>
		<Private type="Siemens-s7ManagerName">E12B_BPCU</Private>
		<Private type="Siemens-ICD-Language">de-DE</Private>
		<Private type="Siemens-Siprotec5-Product-Code">7SJ85-DAAA-AA0-0AAAA0-A50111-13111B-DBD000-000AC0-CB1BA1</Private>
		<Private type="Siemens-Siprotec5-Application-Template">7SJ85_Non_Directional_OC</Private>
		<Private type="Siemens-Siprotec5-Communication-Configuration-Version">88007</Private>
		<Private type="Siemens-Siprotec5-Configuration-Version">V08.80.07</Private>
		<Private type="Siemens-IsSiprotec5IED" />
		<Private type="Siemens-IED-Id">edf473e9-fe82-49e4-b97e-6f79ee9d764c</Private>
		<Private type="Siemens-ModifiedDate">02/03/2022 13:10:20</Private>
		<Private type="Siemens-ModificationCounter">88</Private>
		<Services nameLength="64">
			<SettingGroups>
				<SGEdit resvTms="true" />
			</SettingGroups>
			<GetDirectory />
			<GetDataObjectDefinition />
			<DataObjectDirectory />
			<GetDataSetValue />
			<DataSetDirectory />
			<ConfDataSet max="50" maxAttributes="200" modify="true" />
			<ReadWrite />
			<ConfReportControl max="60" bufMode="both" bufConf="true" />
			<GetCBValues />
			<ReportSettings cbName="Conf" datSet="Dyn" rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" resvTms="true" />
			<GSESettings cbName="Conf" datSet="Conf" appID="Conf" dataLabel="Fix" kdaParticipant="false" />
			<ConfLNs fixPrefix="false" fixLnInst="false" />
			<ConfLdName />
			<GOOSE max="16" fixedOffs="false" goose="true" rGOOSE="false" />
			<SupSubscription maxGo="0" maxSv="60" />
			<ValueHandling setToRO="false" />
		</Services>
		<AccessPoint desc="Port E" name="E" router="false" clock="false">
			<ServerAt apName="F" />
			<Services>
				<ClientServices goose="true" gsse="false" bufReport="false" unbufReport="false" readLog="false" sv="true" supportsLdName="true" maxGOOSE="128" maxSMV="16" rGOOSE="false" rSV="false" noIctBinding="false">
					<TimeSyncProt sntp="true" c37_238="false" other="false" iec61850_9_3="true" />
				</ClientServices>
				<DynAssociation max="6" />
				<DynDataSet max="30" maxAttributes="60" />
				<FileHandling />
				<ValueHandling setToRO="false" />
				<RedProt hsr="true" prp="true" rstp="true" />
				<CommProt ipv6="false" />
			</Services>
		</AccessPoint>
		<AccessPoint desc="Port F" name="F" router="false" clock="false">
			<Server timeout="0">
				<Authentication none="true" />
				<LDevice desc="Anwendung" inst="Application">
					<Private type="Siemens-MasterId">e97e6dc5-734f-4684-8fc3-01de7c2c95ce</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_1014" desc="Allgemein">
						<Private type="Siemens-MasterId">30f83605-1417-4535-b963-92e684c84226</Private>
						<DataSet name="Gefahrenmeldung">
							<FCDA ldInst="Meldungen" prefix="" lnClass="SIMG" lnInst="1" doName="InsAlm" fc="ST" />
							<FCDA ldInst="Meldungen" prefix="" lnClass="CALH" lnInst="1" doName="Motorspg" fc="ST" />
							<FCDA ldInst="Meldungen" prefix="" lnClass="CALH" lnInst="1" doName="Federueber" fc="ST" />
							<FCDA ldInst="Meldungen" prefix="" lnClass="CALH" lnInst="1" doName="Schalterfall" fc="ST" />
							<FCDA ldInst="Anlagendaten_Messstelle_U" prefix="" lnClass="TVTR" lnInst="1" doName="FuFail" fc="ST" />
						</DataSet>
						<DataSet name="Rueckmeldungen">
							<FCDA ldInst="Erdungsschalter" prefix="" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST" />
							<FCDA ldInst="Trennschalter" prefix="" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST" />
							<FCDA ldInst="Leistungsschalter" prefix="" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST" />
						</DataSet>
						<DataSet name="BMW">
							<FCDA ldInst="Leistungsschalter_Grundschwingung" prefix="FPRE_" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX" />
							<FCDA ldInst="Leistungsschalter_Grundschwingung" prefix="FPRE_" lnClass="MMXU" lnInst="1" doName="A" fc="MX" />
						</DataSet>
						<ReportControl datSet="Gefahrenmeldung" rptID="E12B_BPCU/Application/LLN0$BR$Gefahrenmeldungen" confRev="10001" buffered="true" bufTime="100" name="Gefahrenmeldungen">
							<TrgOps dchg="true" qchg="true" dupd="false" period="false" gi="true" />
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="false" configRef="true" bufOvfl="true" />
							<RptEnabled max="2">
								<ClientLN iedName="LZG" ldInst="LD0" lnClass="ITCI" lnInst="1" apRef="S1" />
								<ClientLN iedName="StationScout" ldInst="LD0" lnClass="ITCI" lnInst="1" apRef="S1" />
							</RptEnabled>
						</ReportControl>
						<ReportControl datSet="Rueckmeldungen" rptID="E12B_BPCU/Application/LLN0$RP$Rueckmeldungen" confRev="70001" buffered="false" bufTime="100" name="Rueckmeldungen">
							<TrgOps dchg="true" qchg="true" dupd="false" period="false" gi="true" />
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="false" configRef="true" bufOvfl="false" />
							<RptEnabled max="2">
								<ClientLN iedName="LZG" ldInst="LD0" lnClass="ITCI" lnInst="1" apRef="S1" />
								<ClientLN iedName="StationScout" ldInst="LD0" lnClass="ITCI" lnInst="1" apRef="S1" />
							</RptEnabled>
						</ReportControl>
						<ReportControl datSet="BMW" rptID="E12B_BPCU/Application/LLN0$RP$BMW" confRev="1" buffered="false" bufTime="100" name="BMW">
							<TrgOps dchg="true" qchg="true" dupd="false" period="false" gi="true" />
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="false" configRef="true" bufOvfl="false" />
							<RptEnabled max="2">
								<ClientLN iedName="LZG" ldInst="LD0" lnClass="ITCI" lnInst="1" apRef="S1" />
								<ClientLN iedName="StationScout" ldInst="LD0" lnClass="ITCI" lnInst="1" apRef="S1" />
							</RptEnabled>
						</ReportControl>
						<DOI name="Mod" desc="Applikationsmodus" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="LEDRs" desc="LED rücksetzen" />
						<DOI name="MltLev" desc="Mehre.Sch.hoheitsebenen">
							<DAI name="setVal">
								<Val>false</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="LocSta" desc="Schalthoheit Station">
							<DAI name="dataNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<SettingControl numOfSGs="1" actSG="1">
							<Private type="Siemens-MasterId">c1b02e18-9144-402b-9c19-8d59acd6ef95</Private>
						</SettingControl>
					</LN0>
					<LN prefix="" lnClass="LPHD" inst="0" lnType="SIPROTEC5_LNType_LPHD_Application" desc="Gerät">
						<Private type="Siemens-MasterId">994d0c2e-4a39-4355-a225-dc4cb97fe32e</Private>
						<DOI name="PhyNam" desc="Phys. Gerätename">
							<DAI name="vendor">
								<Val>SIEMENS</Val>
							</DAI>
							<DAI name="hwRev">
								<Val>7SJ85-DAAA-AA0-0AAAA0-A50111-13111B-DBD000-000AC0-CB1BA1</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V08.80</Val>
							</DAI>
							<DAI name="model">
								<Val>7SJ85</Val>
							</DAI>
							<DAI name="d">
								<Val>SIEMENS SIPROTEC 5</Val>
							</DAI>
						</DOI>
						<DOI name="PhyHealth" desc="Gerätestatus" />
						<DOI name="Proxy" desc="Proxy" />
					</LN>
				</LDevice>
				<LDevice desc="Kom. Überwachung" inst="ComSupervision">
					<Private type="Siemens-MasterId">6eaaaef0-0fd7-41e9-bcc1-b32cd8f1c84b</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="ComSupervision/LLN0">
						<Private type="Siemens-MasterId">a9b26d10-399d-4658-8259-2ff7a90aa9fa</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-11-22 12:45:42</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
				</LDevice>
				<LDevice desc="Kom. Überwachung_SV-Überw." inst="ComSupervision_SV">
					<Private type="Siemens-MasterId">18ef188b-91c6-45bb-9e3a-3a6f3fdfbad0</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_1003" desc="ComSupervision_SV/LLN0">
						<Private type="Siemens-MasterId">abf4bf13-6987-40d4-ac36-34d7676373f8</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@ComSupervision</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN prefix="" lnClass="LSVS" inst="1" lnType="SIPROTEC5_1025" desc="Abonnement 1">
						<Private type="Siemens-MasterId">7014882f-5ec1-415a-936d-adf804da34e2</Private>
						<DOI name="Mod" desc="Modus (steuerbar)">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>0</Val>
							</DAI>
						</DOI>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-11-22 12:45:42</Val>
							</DAI>
						</DOI>
						<DOI name="St" desc="Status Instanziierung" />
						<DOI name="SimSt" desc="Status Sim-Meldungen" />
						<DOI name="ConfRevNum" desc="Erwart. Rev.-Nr. Konf." />
						<DOI name="SvCBRef" desc="Ref. SV-CB">
							<DAI name="setSrcRef">
								<Val>E12B_PIUMod3_MU1/LLN0.MSVCB01</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="Erdungsschalter" inst="Erdungsschalter">
					<Private type="Siemens-MasterId">38d7d879-334c-4f48-9fc8-043f847ec11f</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_1003" desc="Erdungsschalter/LLN0">
						<Private type="Siemens-MasterId">e2ed305b-4d5b-4444-bf21-2ec1bc8bf540</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN prefix="" lnClass="CSWI" inst="1" lnType="SIPROTEC5_1008" desc="Steuerung">
						<Private type="Siemens-MasterId">7d25dc7f-59a1-4768-8516-edb5b5870acb</Private>
						<Private type="Siemens-LN-Dependency" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Pos" desc="Befehl mit Rückmeld.">
							<DAI name="stVal">
								<Private type="IEC_60870_5_104">
									<IEC_60870_5_104:Address casdu="13056" ioa="3219456" ti="31" />
								</Private>
							</DAI>
							<DAI name="ctlModel">
								<Val>direct-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="operTimeout">
								<Val>20000</Val>
							</DAI>
							<DAI name="SBO" />
							<SDI name="SBOw">
								<DAI name="ctlVal" />
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal">
									<Private type="IEC_60870_5_104">
										<IEC_60870_5_104:Address casdu="13056" ioa="3215360" ti="46" />
									</Private>
								</DAI>
							</SDI>
						</DOI>
					</LN>
					<LN prefix="" lnClass="XSWI" inst="1" lnType="SIPROTEC5_1016" desc="Trennschalter">
						<Private type="Siemens-MasterId">f4c8ca30-ca18-4104-b28d-f3a35a589d67</Private>
						<DOI name="Mod" desc="Modus (nur Status)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2021-10-25 10:35:45</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" desc="Schalthoheit Vor-Ort" />
						<DOI name="OpCnt" desc="S.sp.zä." />
						<DOI name="Pos" desc="Position">
							<DAI name="stVal" />
							<SDI name="pulseConfig">
								<DAI name="cmdQual">
									<Val>pulse</Val>
								</DAI>
								<DAI name="onDur">
									<Val>20000</Val>
								</DAI>
								<DAI name="offDur">
									<Val>0</Val>
								</DAI>
								<DAI name="numPls">
									<Val>1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="BlkOpn" desc="Block. Ausschaltung" />
						<DOI name="BlkCls" desc="Block. der Einschalt." />
						<DOI name="SwTyp" desc="Schaltgerätetyp" />
						<DOI name="OpnCmd" desc="Ausschaltbefehl" />
						<DOI name="ClsCmd" desc="Einschaltbefehl" />
						<DOI name="STrm" desc="ST_Rueckmeldung">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef serviceType="GOOSE" pServT="GOOSE" desc="RxETrm" intAddr="RxETrm;/DPCSO/stVal" pDO="DPCSO" pDA="stVal" />
							<ExtRef serviceType="GOOSE" pServT="GOOSE" desc="RxETrm" intAddr="RxETrm;/DPCSO/q" pDO="DPCSO" pDA="q" />
							<ExtRef desc="RxETrm" intAddr="RxETrm;/DPCSO/t" pServT="GOOSE" pDO="DPCSO" pDA="t" />
							<ExtRef desc="ST_Rueckmeldung" intAddr="STrm;/Pos/stVal" pServT="GOOSE" pDO="Pos" pDA="stVal" iedName="E12B_PIU" ldInst="Erdungsschalter" lnClass="XSWI" lnInst="1" doName="ETrm" daName="stVal" serviceType="GOOSE" srcLDInst="Erdungsschalter" srcLNClass="LLN0" srcCBName="Control_DataSet" />
							<ExtRef desc="ST_Rueckmeldung" intAddr="STrm;/Pos/q" pServT="GOOSE" pDO="Pos" pDA="q" iedName="E12B_PIU" ldInst="Erdungsschalter" lnClass="XSWI" lnInst="1" doName="ETrm" daName="q" serviceType="GOOSE" srcLDInst="Erdungsschalter" srcLNClass="LLN0" srcCBName="Control_DataSet" />
						</Inputs>
					</LN>
				</LDevice>
				<LDevice desc="Leistungsschalter" inst="Leistungsschalter">
					<Private type="Siemens-MasterId">894207fa-32b0-40a6-bde3-1ae19f9a1f0d</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Leistungsschalter/LLN0">
						<Private type="Siemens-MasterId">128cd2b7-f991-4932-99f9-c2b4b4169915</Private>
						<DataSet name="Q32_Steuerung">
							<Private type="Siemens-GUID">da421c0d22d04625874b2193c293c77d</Private>
							<FCDA ldInst="Leistungsschalter" prefix="" lnClass="XCBR" lnInst="1" doName="TripOpnCmd" daName="stVal" fc="ST" />
							<FCDA ldInst="Leistungsschalter" prefix="" lnClass="XCBR" lnInst="1" doName="TripOpnCmd" daName="q" fc="ST" />
							<FCDA ldInst="Leistungsschalter" prefix="" lnClass="XCBR" lnInst="1" doName="ClsCmd" daName="stVal" fc="ST" />
							<FCDA ldInst="Leistungsschalter" prefix="" lnClass="XCBR" lnInst="1" doName="ClsCmd" daName="q" fc="ST" />
							<FCDA ldInst="Erdungsschalter" prefix="" lnClass="XSWI" lnInst="1" doName="OpnCmd" daName="stVal" fc="ST" />
							<FCDA ldInst="Erdungsschalter" prefix="" lnClass="XSWI" lnInst="1" doName="OpnCmd" daName="q" fc="ST" />
							<FCDA ldInst="Erdungsschalter" prefix="" lnClass="XSWI" lnInst="1" doName="ClsCmd" daName="stVal" fc="ST" />
							<FCDA ldInst="Erdungsschalter" prefix="" lnClass="XSWI" lnInst="1" doName="ClsCmd" daName="q" fc="ST" />
							<FCDA ldInst="Trennschalter" prefix="" lnClass="XSWI" lnInst="1" doName="OpnCmd" daName="stVal" fc="ST" />
							<FCDA ldInst="Trennschalter" prefix="" lnClass="XSWI" lnInst="1" doName="OpnCmd" daName="q" fc="ST" />
							<FCDA ldInst="Trennschalter" prefix="" lnClass="XSWI" lnInst="1" doName="ClsCmd" daName="stVal" fc="ST" />
							<FCDA ldInst="Trennschalter" prefix="" lnClass="XSWI" lnInst="1" doName="ClsCmd" daName="q" fc="ST" />
						</DataSet>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft">
							<DAI name="stVal">
								<Val>Ok</Val>
							</DAI>
						</DOI>
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2022-01-12 08:59:44</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
						<GSEControl datSet="Q32_Steuerung" confRev="70001" appID="E12B_BPCU_Q32_Steuerung" name="Q32_Steuerung" type="GOOSE">
							<IEDName apRef="E">E12B_PIU</IEDName>
						</GSEControl>
					</LN0>
					<LN prefix="" lnClass="XCBR" inst="1" lnType="SIPROTEC5_LNType_XCBR_3pol_Ctl" desc="Leistungssch.">
						<Private type="Siemens-MasterId">18c18b2d-4c33-4f3d-9871-115ead6562b3</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Loc" desc="Schalthoheit Vor-Ort" />
						<DOI name="OpCnt" desc="S.sp.zä." />
						<DOI name="Pos" desc="Position">
							<DAI name="stVal" />
							<SDI name="pulseConfig">
								<DAI name="cmdQual">
									<Val>pulse</Val>
								</DAI>
								<DAI name="onDur">
									<Val>1000</Val>
								</DAI>
								<DAI name="offDur">
									<Val>0</Val>
								</DAI>
								<DAI name="numPls">
									<Val>1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="BlkOpn" desc="Block. Ausschaltung" />
						<DOI name="BlkCls" desc="Block. der Einschalt." />
						<DOI name="TripOpnCmd" desc="Ausl./Ausschaltbefehl" />
						<DOI name="ClsCmd" desc="Einschaltbefehl" />
						<DOI name="LSrm" desc="RxPos1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="LSrm" intAddr="RxPos1;/Pos/stVal" pServT="GOOSE" pDO="Pos" pDA="stVal" serviceType="GOOSE" />
							<ExtRef desc="LSrm" intAddr="RxPos1;/Pos/q" pServT="GOOSE" pDO="Pos" pDA="q" serviceType="GOOSE" />
							<ExtRef desc="RxPos1" intAddr="LSrm;/Pos/stVal" pServT="GOOSE" pDO="Pos" pDA="stVal" iedName="E12B_PIU" ldInst="Leistungsschalter" lnClass="XCBR" lnInst="1" doName="LSrm" daName="stVal" serviceType="GOOSE" srcLDInst="Erdungsschalter" srcLNClass="LLN0" srcCBName="Control_DataSet" />
							<ExtRef desc="RxPos1" intAddr="LSrm;/Pos/q" pServT="GOOSE" pDO="Pos" pDA="q" iedName="E12B_PIU" ldInst="Leistungsschalter" lnClass="XCBR" lnInst="1" doName="LSrm" daName="q" serviceType="GOOSE" srcLDInst="Erdungsschalter" srcLNClass="LLN0" srcCBName="Control_DataSet" />
						</Inputs>
					</LN>
					<LN prefix="" lnClass="CSWI" inst="1" lnType="SIPROTEC5_1008" desc="Steuerung">
						<Private type="Siemens-MasterId">9720f87e-ffe7-4428-990d-2bb9f37db0f9</Private>
						<Private type="Siemens-LN-Dependency" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Pos" desc="Befehl mit Rückmeld.">
							<DAI name="stVal">
								<Private type="IEC_60870_5_104">
									<IEC_60870_5_104:Address casdu="13056" ioa="3219456" ti="31" />
								</Private>
							</DAI>
							<DAI name="ctlModel">
								<Val>direct-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
							<DAI name="SBO" />
							<SDI name="SBOw">
								<DAI name="ctlVal" />
							</SDI>
							<SDI name="Oper">
								<DAI name="ctlVal">
									<Private type="IEC_60870_5_104">
										<IEC_60870_5_104:Address casdu="13056" ioa="3215360" ti="46" />
									</Private>
								</DAI>
							</SDI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="AnDa" inst="Anlagendaten">
					<Private type="Siemens-MasterId">e639fdfe-c52d-4c9b-a2a5-8ec94b3ff4d8</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_1003" desc="Anlagendaten/LLN0">
						<Private type="Siemens-MasterId">8c708d1d-bdcb-4a0c-96b1-e874558c0755</Private>
						<ReportControl name="A_URCB" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_1" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_1" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_2" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_2" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_3" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_3" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_4" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_4" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_5" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_5" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_6" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_6" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_7" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_7" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_8" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_8" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_9" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_9" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_10" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_10" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_11" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_11" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_12" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_12" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_13" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_13" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_14" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_14" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_15" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_15" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_16" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_16" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_17" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_17" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_18" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_18" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_19" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_19" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_20" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_20" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_21" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_21" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_22" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_22" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_23" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_23" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_24" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_24" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_25" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_25" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_26" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_26" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_27" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_27" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_28" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_28" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<ReportControl name="A_URCB_29" rptID="E12B_BPCUAnlagendaten/LLN0$RP$A_URCB_29" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined" />
							<OptFields />
						</ReportControl>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
				</LDevice>
				<LDevice desc="AnDa_MSI3p1" inst="Anlagendaten_Messstelle_I">
					<Private type="Siemens-MasterId">74f766fd-cbf0-4b12-aca5-5c63090785b3</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_1003" desc="Anlagendaten_Messstelle_I/LLN0">
						<Private type="Siemens-MasterId">d9f636d7-6bca-4b99-98df-b984e4b2c69a</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Anlagendaten</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN prefix="" lnClass="TCTR" inst="1" lnType="SIPROTEC5_LNType_TCTR" desc="Stromwandler 1">
						<Private type="Siemens-MasterId">4ed2a757-9b46-49ff-a072-e8777ec74507</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="ARtg" desc="Nennstrom, primär">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1000</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Nennfrequenz">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Abtastwerte Strom">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Genauigkeitsklasse">
							<DAI name="setVal">
								<Val>TPS</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Sek. Schleifenzeitkonst.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Verh. Höchstwertbegr.">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HoldTmms" desc="Haltezeit">
							<DAI name="setVal">
								<Val>1000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="AnDa_MSI3p1.Stromwandler 1" iedName="E12B_PIU" ldInst="Mod3_MU1" prefix="I01A" lnClass="TCTR" lnInst="1" doName="AmpSv" daName="instMag.i" intAddr="AmpSv;TCTR/AmpSv/instMag.i" serviceType="SMV" srcLDInst="Mod3_MU1" srcLNClass="LLN0" srcCBName="MSVCB01" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="instMag.i" />
							<ExtRef desc="AnDa_MSI3p1.Stromwandler 1" iedName="E12B_PIU" ldInst="Mod3_MU1" prefix="I01A" lnClass="TCTR" lnInst="1" doName="AmpSv" daName="q" intAddr="AmpSv;TCTR/AmpSv/q" serviceType="SMV" srcLDInst="Mod3_MU1" srcLNClass="LLN0" srcCBName="MSVCB01" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="q" />
						</Inputs>
					</LN>
					<LN prefix="" lnClass="TCTR" inst="2" lnType="SIPROTEC5_LNType_TCTR" desc="Stromwandler 2">
						<Private type="Siemens-MasterId">377a1e30-0d47-4e14-8a18-89181b47184d</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="ARtg" desc="Nennstrom, primär">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1000</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Nennfrequenz">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Abtastwerte Strom">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Genauigkeitsklasse">
							<DAI name="setVal">
								<Val>TPS</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Sek. Schleifenzeitkonst.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Verh. Höchstwertbegr.">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HoldTmms" desc="Haltezeit">
							<DAI name="setVal">
								<Val>1000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="AnDa_MSI3p1.Stromwandler 2" iedName="E12B_PIU" ldInst="Mod3_MU1" prefix="I01B" lnClass="TCTR" lnInst="2" doName="AmpSv" daName="instMag.i" intAddr="AmpSv;TCTR/AmpSv/instMag.i" serviceType="SMV" srcLDInst="Mod3_MU1" srcLNClass="LLN0" srcCBName="MSVCB01" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="instMag.i" />
							<ExtRef desc="AnDa_MSI3p1.Stromwandler 2" iedName="E12B_PIU" ldInst="Mod3_MU1" prefix="I01B" lnClass="TCTR" lnInst="2" doName="AmpSv" daName="q" intAddr="AmpSv;TCTR/AmpSv/q" serviceType="SMV" srcLDInst="Mod3_MU1" srcLNClass="LLN0" srcCBName="MSVCB01" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="q" />
						</Inputs>
					</LN>
					<LN prefix="" lnClass="TCTR" inst="3" lnType="SIPROTEC5_LNType_TCTR" desc="Stromwandler 3">
						<Private type="Siemens-MasterId">056c2b23-3029-429a-9429-1e44e80d52bb</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="ARtg" desc="Nennstrom, primär">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1000</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Nennfrequenz">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Abtastwerte Strom">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Genauigkeitsklasse">
							<DAI name="setVal">
								<Val>TPS</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Sek. Schleifenzeitkonst.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Verh. Höchstwertbegr.">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HoldTmms" desc="Haltezeit">
							<DAI name="setVal">
								<Val>1000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="AnDa_MSI3p1.Stromwandler 3" iedName="E12B_PIU" ldInst="Mod3_MU1" prefix="I01C" lnClass="TCTR" lnInst="3" doName="AmpSv" daName="instMag.i" intAddr="AmpSv;TCTR/AmpSv/instMag.i" serviceType="SMV" srcLDInst="Mod3_MU1" srcLNClass="LLN0" srcCBName="MSVCB01" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="instMag.i" />
							<ExtRef desc="AnDa_MSI3p1.Stromwandler 3" iedName="E12B_PIU" ldInst="Mod3_MU1" prefix="I01C" lnClass="TCTR" lnInst="3" doName="AmpSv" daName="q" intAddr="AmpSv;TCTR/AmpSv/q" serviceType="SMV" srcLDInst="Mod3_MU1" srcLNClass="LLN0" srcCBName="MSVCB01" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="q" />
						</Inputs>
					</LN>
					<LN prefix="" lnClass="TCTR" inst="4" lnType="SIPROTEC5_LNType_TCTR" desc="Stromwandler 4">
						<Private type="Siemens-MasterId">d28f3b00-80f7-43c6-93d5-fa9e124bda5f</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="ARtg" desc="Nennstrom, primär">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1000</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Nennfrequenz">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Abtastwerte Strom">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Genauigkeitsklasse">
							<DAI name="setVal">
								<Val>TPS</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Sek. Schleifenzeitkonst.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Verh. Höchstwertbegr.">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1.6</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HoldTmms" desc="Haltezeit">
							<DAI name="setVal">
								<Val>1000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="AnDa_MSI3p1.Stromwandler 4" iedName="E12B_PIU" ldInst="Mod3_MU1" prefix="I01N" lnClass="TCTR" lnInst="4" doName="AmpSv" daName="instMag.i" intAddr="AmpSv;TCTR/AmpSv/instMag.i" serviceType="SMV" srcLDInst="Mod3_MU1" srcLNClass="LLN0" srcCBName="MSVCB01" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="instMag.i" />
							<ExtRef desc="AnDa_MSI3p1.Stromwandler 4" iedName="E12B_PIU" ldInst="Mod3_MU1" prefix="I01N" lnClass="TCTR" lnInst="4" doName="AmpSv" daName="q" intAddr="AmpSv;TCTR/AmpSv/q" serviceType="SMV" srcLDInst="Mod3_MU1" srcLNClass="LLN0" srcCBName="MSVCB01" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="q" />
						</Inputs>
					</LN>
				</LDevice>
				<LDevice desc="AnDa_MSU3p1" inst="Anlagendaten_Messstelle_U">
					<Private type="Siemens-MasterId">823823d5-9492-4abf-ad9d-a52d57457883</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_1003" desc="Anlagendaten_Messstelle_U/LLN0">
						<Private type="Siemens-MasterId">41f9153b-a335-4500-b902-a71ca3774eb3</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Anlagendaten</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN prefix="" lnClass="TVTR" inst="1" lnType="SIPROTEC5_LNType_TVTR" desc="Spannungswdl.1">
						<Private type="Siemens-MasterId">940b5474-3d63-4fab-bfb4-58059a8fb41f</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="VolSv" desc="Abtastwerte Spannung">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VRtg" desc="Nennspannung, primär">
							<SDI name="setMag">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.2</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>1200</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Nennfrequenz">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Clip" desc="Verh. Höchstwertbegr.">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HoldTmms" desc="Haltezeit">
							<DAI name="setVal">
								<Val>1000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="FuFail" desc="FuFail">
							<DAI name="stVal">
								<Private type="IEC_60870_5_104">
									<IEC_60870_5_104:Address casdu="13056" ioa="3228672" ti="30" />
								</Private>
							</DAI>
							<DAI name="dataNs">
								<Val>IEC61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5/3P</Val>
							</DAI>
						</DOI>
						<DOI name="NamVRtg" desc="NamVRtg">
							<DAI name="val">
								<Val>173000</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>2</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="AnDa_MSU3p1.Spannungswdl.1" iedName="E12B_PIU" ldInst="Mod3_MU1" prefix="U01A" lnClass="TVTR" lnInst="1" doName="VolSv" daName="instMag.i" intAddr="VolSv;TVTR/VolSv/instMag.i" serviceType="SMV" srcLDInst="Mod3_MU1" srcLNClass="LLN0" srcCBName="MSVCB01" pServT="SMV" pLN="TVTR" pDO="VolSv" pDA="instMag.i" />
							<ExtRef desc="AnDa_MSU3p1.Spannungswdl.1" iedName="E12B_PIU" ldInst="Mod3_MU1" prefix="U01A" lnClass="TVTR" lnInst="1" doName="VolSv" daName="q" intAddr="VolSv;TVTR/VolSv/q" serviceType="SMV" srcLDInst="Mod3_MU1" srcLNClass="LLN0" srcCBName="MSVCB01" pServT="SMV" pLN="TVTR" pDO="VolSv" pDA="q" />
							<ExtRef desc="FuFail" intAddr="FuFail;/Ind/stVal" serviceType="GOOSE" iedName="E12B_PIU" ldInst="Meldungen" lnClass="TVTR" lnInst="4" doName="FuFail" daName="stVal" srcLDInst="Meldungen" srcLNClass="LLN0" srcCBName="Q32_Meldung" pServT="GOOSE" pDO="Ind" pDA="stVal" />
							<ExtRef desc="FuFail" intAddr="FuFail;/Ind/q" serviceType="GOOSE" iedName="E12B_PIU" ldInst="Meldungen" lnClass="TVTR" lnInst="4" doName="FuFail" daName="q" srcLDInst="Meldungen" srcLNClass="LLN0" srcCBName="Q32_Meldung" pServT="GOOSE" pDO="Ind" pDA="q" />
							<ExtRef desc="FuFail" intAddr="FuFail;/Ind/t" serviceType="GOOSE" pServT="GOOSE" pDO="Ind" pDA="t" />
						</Inputs>
					</LN>
					<LN prefix="" lnClass="TVTR" inst="2" lnType="SIPROTEC5_LNType_TVTR_1" desc="Spannungswdl.2">
						<Private type="Siemens-MasterId">c1184c07-f4eb-43c9-b6fe-55253ff36454</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="VolSv" desc="Abtastwerte Spannung">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VRtg" desc="Nennspannung, primär">
							<SDI name="setMag">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.2</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>1200</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Nennfrequenz">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Clip" desc="Verh. Höchstwertbegr.">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HoldTmms" desc="Haltezeit">
							<DAI name="setVal">
								<Val>1000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5/3P</Val>
							</DAI>
						</DOI>
						<DOI name="NamVRtg" desc="NamVRtg">
							<DAI name="val">
								<Val>173000</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>2</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="AnDa_MSU3p1.Spannungswdl.2" iedName="E12B_PIU" ldInst="Mod3_MU1" prefix="U01B" lnClass="TVTR" lnInst="2" doName="VolSv" daName="instMag.i" intAddr="VolSv;TVTR/VolSv/instMag.i" serviceType="SMV" srcLDInst="Mod3_MU1" srcLNClass="LLN0" srcCBName="MSVCB01" pServT="SMV" pLN="TVTR" pDO="VolSv" pDA="instMag.i" />
							<ExtRef desc="AnDa_MSU3p1.Spannungswdl.2" iedName="E12B_PIU" ldInst="Mod3_MU1" prefix="U01B" lnClass="TVTR" lnInst="2" doName="VolSv" daName="q" intAddr="VolSv;TVTR/VolSv/q" serviceType="SMV" srcLDInst="Mod3_MU1" srcLNClass="LLN0" srcCBName="MSVCB01" pServT="SMV" pLN="TVTR" pDO="VolSv" pDA="q" />
						</Inputs>
					</LN>
					<LN prefix="" lnClass="TVTR" inst="3" lnType="SIPROTEC5_LNType_TVTR_1" desc="Spannungswdl.3">
						<Private type="Siemens-MasterId">b3472ae6-8938-4270-b3aa-bb87dad8430f</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="VolSv" desc="Abtastwerte Spannung">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VRtg" desc="Nennspannung, primär">
							<SDI name="setMag">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.2</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>1200</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Nennfrequenz">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Clip" desc="Verh. Höchstwertbegr.">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HoldTmms" desc="Haltezeit">
							<DAI name="setVal">
								<Val>1000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5/3P</Val>
							</DAI>
						</DOI>
						<DOI name="NamVRtg" desc="NamVRtg">
							<DAI name="val">
								<Val>173000</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>2</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="AnDa_MSU3p1.Spannungswdl.3" iedName="E12B_PIU" ldInst="Mod3_MU1" prefix="U01C" lnClass="TVTR" lnInst="3" doName="VolSv" daName="instMag.i" intAddr="VolSv;TVTR/VolSv/instMag.i" serviceType="SMV" srcLDInst="Mod3_MU1" srcLNClass="LLN0" srcCBName="MSVCB01" pServT="SMV" pLN="TVTR" pDO="VolSv" pDA="instMag.i" />
							<ExtRef desc="AnDa_MSU3p1.Spannungswdl.3" iedName="E12B_PIU" ldInst="Mod3_MU1" prefix="U01C" lnClass="TVTR" lnInst="3" doName="VolSv" daName="q" intAddr="VolSv;TVTR/VolSv/q" serviceType="SMV" srcLDInst="Mod3_MU1" srcLNClass="LLN0" srcCBName="MSVCB01" pServT="SMV" pLN="TVTR" pDO="VolSv" pDA="q" />
						</Inputs>
					</LN>
					<LN prefix="" lnClass="TVTR" inst="4" lnType="SIPROTEC5_LNType_TVTR_1" desc="Spannungswdl.4">
						<Private type="Siemens-MasterId">62a46302-61ca-461d-9175-cccd08fb1c6c</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="VolSv" desc="Abtastwerte Spannung">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VRtg" desc="Nennspannung, primär">
							<SDI name="setMag">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.2</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>1200</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Nennfrequenz">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Clip" desc="Verh. Höchstwertbegr.">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HoldTmms" desc="Haltezeit">
							<DAI name="setVal">
								<Val>1000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5/3P</Val>
							</DAI>
						</DOI>
						<DOI name="NamVRtg" desc="NamVRtg">
							<DAI name="val">
								<Val>173000</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>2</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="AnDa_MSU3p1.Spannungswdl.4" iedName="E12B_PIU" ldInst="Mod3_MU1" prefix="U01N" lnClass="TVTR" lnInst="4" doName="VolSv" daName="instMag.i" intAddr="VolSv;TVTR/VolSv/instMag.i" serviceType="SMV" srcLDInst="Mod3_MU1" srcLNClass="LLN0" srcCBName="MSVCB01" pServT="SMV" pLN="TVTR" pDO="VolSv" pDA="instMag.i" />
							<ExtRef desc="AnDa_MSU3p1.Spannungswdl.4" iedName="E12B_PIU" ldInst="Mod3_MU1" prefix="U01N" lnClass="TVTR" lnInst="4" doName="VolSv" daName="q" intAddr="VolSv;TVTR/VolSv/q" serviceType="SMV" srcLDInst="Mod3_MU1" srcLNClass="LLN0" srcCBName="MSVCB01" pServT="SMV" pLN="TVTR" pDO="VolSv" pDA="q" />
						</Inputs>
					</LN>
				</LDevice>
				<LDevice desc="Trennschalter" inst="Trennschalter">
					<Private type="Siemens-MasterId">70ea7a85-3a0f-4163-ac26-00fd290a8e4c</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_1003" desc="Trennschalter/LLN0">
						<Private type="Siemens-MasterId">c546da9f-8010-4db5-bc51-261c5c03ba70</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN prefix="" lnClass="CSWI" inst="1" lnType="SIPROTEC5_1008" desc="Steuerung">
						<Private type="Siemens-MasterId">67482ebf-4e34-44ce-bf1d-a0ca8e4f1163</Private>
						<Private type="Siemens-LN-Dependency" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Pos" desc="Befehl mit Rückmeld.">
							<DAI name="stVal">
								<Private type="IEC_60870_5_104">
									<IEC_60870_5_104:Address casdu="13056" ioa="3219456" ti="31" />
								</Private>
							</DAI>
							<DAI name="ctlModel">
								<Val>direct-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="operTimeout">
								<Val>20000</Val>
							</DAI>
							<DAI name="SBO" />
							<SDI name="Oper">
								<DAI name="ctlVal">
									<Private type="IEC_60870_5_104">
										<IEC_60870_5_104:Address casdu="13056" ioa="3215360" ti="46" />
									</Private>
								</DAI>
							</SDI>
						</DOI>
					</LN>
					<LN prefix="" lnClass="XSWI" inst="1" lnType="SIPROTEC5_LNType_XSWI_Ctl_1" desc="Trennschalter">
						<Private type="Siemens-MasterId">26b3ebfa-30e1-46b3-bfb5-ddae3e2f5313</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Loc" desc="Schalthoheit Vor-Ort" />
						<DOI name="OpCnt" desc="S.sp.zä." />
						<DOI name="Pos" desc="Position">
							<DAI name="stVal" />
							<SDI name="pulseConfig">
								<DAI name="cmdQual">
									<Val>pulse</Val>
								</DAI>
								<DAI name="onDur">
									<Val>20000</Val>
								</DAI>
								<DAI name="offDur">
									<Val>0</Val>
								</DAI>
								<DAI name="numPls">
									<Val>1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="BlkOpn" desc="Block. Ausschaltung" />
						<DOI name="BlkCls" desc="Block. der Einschalt." />
						<DOI name="SwTyp" desc="Schaltgerätetyp" />
						<DOI name="OpnCmd" desc="Ausschaltbefehl" />
						<DOI name="ClsCmd" desc="Einschaltbefehl" />
						<DOI name="ETrm" desc="ET_Rueckmeldung">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef serviceType="GOOSE" pServT="GOOSE" desc="RxSTrm" intAddr="RxSTrm;/DPCSO/stVal" pDO="DPCSO" pDA="stVal" />
							<ExtRef serviceType="GOOSE" pServT="GOOSE" desc="RxSTrm" intAddr="RxSTrm;/DPCSO/q" pDO="DPCSO" pDA="q" />
							<ExtRef desc="RxSTrm" intAddr="RxSTrm;/DPCSO/t" pServT="GOOSE" pDO="DPCSO" pDA="t" />
							<ExtRef desc="ET_Rueckmeldung" intAddr="ETrm;/Pos/stVal" pServT="GOOSE" pDO="Pos" pDA="stVal" iedName="E12B_PIU" ldInst="Trennschalter" lnClass="XSWI" lnInst="1" doName="STrm" daName="stVal" serviceType="GOOSE" srcLDInst="Erdungsschalter" srcLNClass="LLN0" srcCBName="Control_DataSet" />
							<ExtRef desc="ET_Rueckmeldung" intAddr="ETrm;/Pos/q" pServT="GOOSE" pDO="Pos" pDA="q" iedName="E12B_PIU" ldInst="Trennschalter" lnClass="XSWI" lnInst="1" doName="STrm" daName="q" serviceType="GOOSE" srcLDInst="Erdungsschalter" srcLNClass="LLN0" srcCBName="Control_DataSet" />
						</Inputs>
					</LN>
				</LDevice>
				<LDevice desc="Meldungen" inst="Meldungen">
					<Private type="Siemens-MasterId">0f7f3079-ea4e-4a4a-b64e-d5f81b2dbce1</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_1003" desc="Meldungen/LLN0">
						<Private type="Siemens-MasterId">ec5248bd-c71b-4aa5-834b-e01d8ae0136e</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN prefix="" lnClass="CALH" inst="1" lnType="SIPROTEC5_LNType_USER_Universal" desc="Gefahrenmeldung">
						<Private type="Siemens-MasterId">3a3d690f-2132-4c83-bd59-f71870d62acb</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Motorspg" desc="Motorspgannung fehlt">
							<DAI name="stVal">
								<Private type="IEC_60870_5_104">
									<IEC_60870_5_104:Address casdu="13056" ioa="3228928" ti="30" />
								</Private>
							</DAI>
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="Federueber" desc="Federüberwachung">
							<DAI name="stVal">
								<Private type="IEC_60870_5_104">
									<IEC_60870_5_104:Address casdu="13056" ioa="3228672" ti="30" />
								</Private>
							</DAI>
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="Schalterfall" desc="Schalterfall">
							<DAI name="stVal">
								<Private type="IEC_60870_5_104">
									<IEC_60870_5_104:Address casdu="13056" ioa="3228928" ti="30" />
								</Private>
							</DAI>
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="Meldung200" desc="Meldung200" />
						<Inputs>
							<ExtRef desc="Spannungswdl. Schutzschlter" intAddr="SpgSchutz;/Ind/stVal" serviceType="GOOSE" pServT="GOOSE" pDO="Ind" pDA="stVal" />
							<ExtRef desc="Spannungswdl. Schutzschlter" intAddr="SpgSchutz;/Ind/q" serviceType="GOOSE" pServT="GOOSE" pDO="Ind" pDA="q" />
							<ExtRef desc="Spannungswdl. Schutzschlter" intAddr="SpgSchutz;/Ind/t" serviceType="GOOSE" pServT="GOOSE" pDO="Ind" pDA="t" />
							<ExtRef desc="Motorspgannung fehlt" intAddr="Motorspg;/Ind/stVal" serviceType="GOOSE" iedName="E12B_PIU" ldInst="Meldungen" lnClass="USER" lnInst="1" doName="Motorspg" daName="stVal" srcLDInst="Meldungen" srcLNClass="LLN0" srcCBName="Q32_Meldung" pServT="GOOSE" pDO="Ind" pDA="stVal" />
							<ExtRef desc="Motorspgannung fehlt" intAddr="Motorspg;/Ind/q" serviceType="GOOSE" iedName="E12B_PIU" ldInst="Meldungen" lnClass="USER" lnInst="1" doName="Motorspg" daName="q" srcLDInst="Meldungen" srcLNClass="LLN0" srcCBName="Q32_Meldung" pServT="GOOSE" pDO="Ind" pDA="q" />
							<ExtRef desc="Motorspgannung fehlt" intAddr="Motorspg;/Ind/t" serviceType="GOOSE" pServT="GOOSE" pDO="Ind" pDA="t" />
							<ExtRef desc="Federüberwachung" intAddr="Federueber;/Ind/stVal" serviceType="GOOSE" iedName="E12B_PIU" ldInst="Meldungen" lnClass="USER" lnInst="1" doName="Federueber" daName="stVal" srcLDInst="Meldungen" srcLNClass="LLN0" srcCBName="Q32_Meldung" pServT="GOOSE" pDO="Ind" pDA="stVal" />
							<ExtRef desc="Federüberwachung" intAddr="Federueber;/Ind/q" serviceType="GOOSE" iedName="E12B_PIU" ldInst="Meldungen" lnClass="USER" lnInst="1" doName="Federueber" daName="q" srcLDInst="Meldungen" srcLNClass="LLN0" srcCBName="Q32_Meldung" pServT="GOOSE" pDO="Ind" pDA="q" />
							<ExtRef desc="Federüberwachung" intAddr="Federueber;/Ind/t" serviceType="GOOSE" pServT="GOOSE" pDO="Ind" pDA="t" />
							<ExtRef desc="Gas-Druck/Stecker gezogen" intAddr="GasStecker;/Ind/stVal" serviceType="GOOSE" />
							<ExtRef desc="Gas-Druck/Stecker gezogen" intAddr="GasStecker;/Ind/q" serviceType="GOOSE" />
							<ExtRef desc="Gas-Druck/Stecker gezogen" intAddr="GasStecker;/Ind/t" serviceType="GOOSE" />
							<ExtRef desc="Schalterfall" intAddr="Schalterfall;/Ind/stVal" serviceType="GOOSE" iedName="E12B_PIU" ldInst="Meldungen" lnClass="USER" lnInst="1" doName="Schalterfall" daName="stVal" srcLDInst="Meldungen" srcLNClass="LLN0" srcCBName="Q32_Meldung" pServT="GOOSE" pDO="Ind" pDA="stVal" />
							<ExtRef desc="Schalterfall" intAddr="Schalterfall;/Ind/q" serviceType="GOOSE" iedName="E12B_PIU" ldInst="Meldungen" lnClass="USER" lnInst="1" doName="Schalterfall" daName="q" srcLDInst="Meldungen" srcLNClass="LLN0" srcCBName="Q32_Meldung" pServT="GOOSE" pDO="Ind" pDA="q" />
							<ExtRef desc="Schalterfall" intAddr="Schalterfall;/Ind/t" serviceType="GOOSE" pServT="GOOSE" pDO="Ind" pDA="t" />
							<ExtRef desc="GrAlm" intAddr="GrAlm;/Ind/stVal" serviceType="GOOSE" />
							<ExtRef desc="GrAlm" intAddr="GrAlm;/Ind/q" serviceType="GOOSE" />
							<ExtRef desc="GrAlm" intAddr="GrAlm;/Ind/t" serviceType="GOOSE" />
						</Inputs>
					</LN>
					<LN prefix="" lnClass="SIMG" inst="1" lnType="SIPROTEC5_1011" desc="Gas-Druck">
						<Private type="Siemens-MasterId">c271b185-34bc-43a7-8f83-a809874692aa</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="InsAlm" desc="InsAlm">
							<DAI name="stVal">
								<Private type="IEC_60870_5_104">
									<IEC_60870_5_104:Address casdu="13056" ioa="3228928" ti="30" />
								</Private>
							</DAI>
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="InsAlm" intAddr="InsAlm;/Ind/stVal" serviceType="GOOSE" iedName="E12B_PIU" ldInst="Meldungen" lnClass="SIMG" lnInst="1" doName="InsAlm" daName="stVal" srcLDInst="Meldungen" srcLNClass="LLN0" srcCBName="Q32_Meldung" pServT="GOOSE" pDO="Ind" pDA="stVal" />
							<ExtRef desc="InsAlm" intAddr="InsAlm;/Ind/q" serviceType="GOOSE" iedName="E12B_PIU" ldInst="Meldungen" lnClass="SIMG" lnInst="1" doName="InsAlm" daName="q" srcLDInst="Meldungen" srcLNClass="LLN0" srcCBName="Q32_Meldung" pServT="GOOSE" pDO="Ind" pDA="q" />
							<ExtRef desc="InsAlm" intAddr="InsAlm;/Ind/t" serviceType="GOOSE" pServT="GOOSE" pDO="Ind" pDA="t" />
						</Inputs>
					</LN>
				</LDevice>
				<LDevice desc="Schutz" inst="UI_Schutz">
					<Private type="Siemens-MasterId">8fb5221d-8a3b-4049-8b94-e089223511b8</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="UI_Schutz/LLN0">
						<Private type="Siemens-MasterId">d2eedec4-f7f7-44a4-be68-d6c37da4f929</Private>
						<DOI name="Mod" desc="Modus (steuerbar)" />
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Health" desc="Bereitschaft" />
						<DOI name="NamPlt" desc="Bezeichnung">
							<DAI name="configRev">
								<Val>2022-01-21 10:05:14</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PTRC" inst="1" lnType="SIPROTEC5_LNType_PTRC_FG_Line_3ph" desc="Sammelmeldung" prefix="">
						<Private type="Siemens-MasterId">ceeb2f25-7bc8-4116-8cba-18a6fe041faa</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Str" desc="Anregung" />
					</LN>
				</LDevice>
				<LDevice desc="Schutz_UMZ" inst="UMZ">
					<Private type="Siemens-MasterId">7ca59144-7fe4-40ab-a65b-4a263cc7df3e</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_1003" desc="UMZ/LLN0">
						<Private type="Siemens-MasterId">9d20e740-d3d0-40b3-8f1d-9bfefbc429bc</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@UI_Schutz</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PTRC" inst="1" lnType="SIPROTEC5_LNType_PTRC_FN_Str_GABC_Without_DirRouting_Op_1_3pol" desc="Sammelmeldung" prefix="">
						<Private type="Siemens-MasterId">cb99d09d-6d6c-485d-bb5f-7d8445fa4bda</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Str" desc="Anregung" />
					</LN>
					<LN lnClass="PTOC" inst="1" lnType="SIPROTEC5_LNType_PTOC_3ph_DOCP_3pol" desc="Überstrom" prefix="ID_">
						<Private type="Siemens-MasterId">e9a16932-7c7b-4f3b-b4e0-03aa1b4ae6fd</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Str" desc="Anregung" />
						<DOI name="Op" desc="Auslösemeldung" />
					</LN>
					<LN lnClass="PTOC" inst="2" lnType="SIPROTEC5_LNType_PTOC_3ph_DOCP_3pol" desc="Kurzschluss" prefix="ID_">
						<Private type="Siemens-MasterId">c5b8e870-3031-4d20-8153-f4024f394d31</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="Str" desc="Anregung" />
						<DOI name="Op" desc="Auslösemeldung" />
					</LN>
				</LDevice>
				<LDevice desc="Leistungsschalter_GrBMW" inst="Leistungsschalter_Grundschwingung">
					<Private type="Siemens-MasterId">b19e1995-132d-4571-a91d-122b0f5bf755</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_1003" desc="Leistungsschalter_Grundschwingung/LLN0">
						<Private type="Siemens-MasterId">f63bb5d6-8343-477b-a7ae-be84ffc557cd</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Leistungsschalter</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="MMXU" inst="1" lnType="SIPROTEC5_LNType_MMXU_OpMeas_Fund_3ph_Pres" desc="Grunds." prefix="FPRE_">
						<Private type="Siemens-MasterId">ffa9c508-2872-49b3-9d5a-31ec34eb84cf</Private>
						<DOI name="Beh" desc="Zustand" />
						<DOI name="PhV" desc="Uph">
							<SDI name="phsA" desc="Uph:L1">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Uph:L2">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Uph:L3">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Uph:Sum">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>20000</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="A" desc="Iph">
							<SDI name="phsA" desc="Iph:L1">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Iph:L2">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Iph:L3">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Iph:Sum">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>100000</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
				</LDevice>
			</Server>
			<Services>
				<ClientServices goose="true" gsse="false" bufReport="false" unbufReport="false" readLog="false" sv="false" supportsLdName="true" maxGOOSE="128" rGOOSE="false" rSV="false" noIctBinding="false">
					<TimeSyncProt sntp="true" c37_238="false" other="false" iec61850_9_3="true" />
				</ClientServices>
				<DynAssociation max="6" />
				<DynDataSet max="30" maxAttributes="60" />
				<FileHandling />
				<ValueHandling setToRO="false" />
				<RedProt hsr="true" prp="true" rstp="true" />
				<CommProt ipv6="false" />
			</Services>
		</AccessPoint>
	</IED>
	<IED desc="SICAM Gateway" name="LZG" type="SICAM" manufacturer="Siemens AG" configVersion="2.1" originalSclVersion="2007" originalSclRevision="B" owner="SCD_Siiipe_TEST">
		<Private type="Siemens-IsCreatedFromTemplateICD" />
		<Private type="Siemens-IED-Id">T_SICAM</Private>
		<Private type="Siemens-ModifiedDate">01/28/2022 11:51:46</Private>
		<Private type="Siemens-ModificationCounter">4</Private>
		<AccessPoint name="S1" clock="true">
			<LN lnClass="ITCI" inst="1" lnType="ITCI_SICAM" />
			<Services nameLength="64">
				<ClientServices bufReport="true" unbufReport="true" supportsLdName="true" maxAttributes="50000" maxReports="200">
					<TimeSyncProt sntp="true" />
				</ClientServices>
				<TimeSyncProt sntp="true" />
			</Services>
		</AccessPoint>
		<AccessPoint name="S2" clock="true">
			<LN lnClass="ITCI" inst="2" lnType="ITCI_SICAM" />
			<Services nameLength="64">
				<ClientServices bufReport="true" unbufReport="true" supportsLdName="true" maxAttributes="50000" maxReports="200">
					<TimeSyncProt sntp="true" />
				</ClientServices>
				<TimeSyncProt sntp="true" />
			</Services>
		</AccessPoint>
		<AccessPoint name="S3" clock="true">
			<LN lnClass="ITCI" inst="3" lnType="ITCI_SICAM" />
			<Services nameLength="64">
				<ClientServices bufReport="true" unbufReport="true" supportsLdName="true" maxAttributes="50000" maxReports="200">
					<TimeSyncProt sntp="true" />
				</ClientServices>
				<TimeSyncProt sntp="true" />
			</Services>
		</AccessPoint>
		<AccessPoint name="S4" clock="true">
			<LN lnClass="ITCI" inst="4" lnType="ITCI_SICAM" />
			<Services nameLength="64">
				<ClientServices bufReport="true" unbufReport="true" supportsLdName="true" maxAttributes="50000" maxReports="200">
					<TimeSyncProt sntp="true" />
				</ClientServices>
				<TimeSyncProt sntp="true" />
			</Services>
		</AccessPoint>
	</IED>
	<DataTypeTemplates>
		<LNodeType id="SIPROTEC5_LNType_LLN0_Application" lnClass="LLN0">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_OnBlockedTestTestBlocked_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_LLN0_V08.60.05_V07.90.00" />
			<DO name="LEDRs" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_V08.60.05_V07.90.00" />
			<DO name="LocKey" type="SIPROTEC5_DOType_SPS_with_dataNs_V08.60.05_V08.40.00" />
			<DO name="LocSta" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_and_dataNs_V08.60.05_V07.90.00" />
			<DO name="MltLev" type="SIPROTEC5_DOType_SPG_readOnly_with_dataNs_V08.60.05_V07.90.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LPHD" lnClass="LPHD">
			<DO name="PhyNam" type="SIPROTEC5_DOType_DPL_V08.60.05_V08.00.00" />
			<DO name="PhyHealth" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="Proxy" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
			<DO name="PwrUp" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
			<DO name="Sim" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_V08.60.05_V07.90.00" />
			<DO name="OpTmh" type="SIPROTEC5_DOType_INS_INT32_with_units_V08.60.05_V08.60.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V08.60.05_V08.00.00" />
			<DO name="PrcModIna" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V08.60.05_V08.60.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_CALH_Application" lnClass="CALH">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V08.60.05_V08.00.00" />
			<DO name="GrAlm" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
			<DO name="GrWrn" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
			<DO name="GrInd" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LTIM_Application" lnClass="LTIM">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V08.60.05_V08.00.00" />
			<DO name="TmDT" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
			<DO name="TmOfsTmm" type="SIPROTEC5_DOType_ING_INT32_edit_V08.60.05_V08.60.00" />
			<DO name="TmUseDT" type="SIPROTEC5_DOType_SPG_edit_V08.60.05_V07.90.00" />
			<DO name="TmChgDT" type="SIPROTEC5_DOType_TSG_V08.60.05_V08.01.00" />
			<DO name="TmChgST" type="SIPROTEC5_DOType_TSG_V08.60.05_V08.01.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LTMS_Application" lnClass="LTMS">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V08.60.05_V08.00.00" />
			<DO name="TmSrc" type="SIPROTEC5_DOType_VSS_V08.60.05_V07.90.00" />
			<DO name="TmSrcTyp" type="SIPROTEC5_DOType_ENS_TmSrcTyp_V08.60.05_V08.01.00" />
			<DO name="TmChSt1" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
			<DO name="TmChSt2" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LTRK_Application" lnClass="LTRK">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V08.60.05_V08.00.00" />
			<DO name="GenTrk" type="SIPROTEC5_DOType_CST_V08.60.05_V07.90.00" />
			<DO name="SgcbTrk" type="SIPROTEC5_DOType_STS_V08.60.05_V07.90.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_ResetLed" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V08.60.05_V08.00.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LLN0_LDevice_Generic" lnClass="LLN0">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_LLN0_V08.60.05_V07.90.00" />
			<DO name="GrRef" type="SIPROTEC5_DOType_ORG_V08.60.05_V08.00.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_CSWI" lnClass="CSWI">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V08.60.05_V08.00.00" />
			<DO name="Loc" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
			<DO name="Pos" type="SIPROTEC5_DOType_DPC_CSWI_Pos_V08.60.05_V08.60.00" />
			<DO name="LocKey" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
			<DO name="LocSta" type="SIPROTEC5_DOType_SPC_statusOnly_and_dir_with_nor_sec_V08.60.05_V07.90.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_CILO" lnClass="CILO">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_V08.60.05_V07.90.00" />
			<DO name="EnaOpn" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
			<DO name="EnaCls" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LCCH_61850" lnClass="LCCH">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V08.60.05_V08.00.00" />
			<DO name="ChLiv" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LCCH_RSTP" lnClass="LCCH">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V08.60.05_V08.00.00" />
			<DO name="ChLiv" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
			<DO name="RedChLiv" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_RDRE_DEF" lnClass="RDRE">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_V08.60.05_V07.90.00" />
			<DO name="RcdTrg" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_V08.60.05_V07.90.00" />
			<DO name="MemRs" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_FnKey_on_V08.60.05_V07.90.00" />
			<DO name="MemClr" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_FnKey_on_V08.60.05_V07.90.00" />
			<DO name="RcdMade" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
			<DO name="FltNum" type="SIPROTEC5_DOType_INS_INT32_V08.60.05_V07.90.00" />
			<DO name="RcdStr" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_XCBR_3pol_CtlOnly" lnClass="XCBR">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V08.60.05_V08.00.00" />
			<DO name="Loc" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
			<DO name="EEHealth" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="OpCnt" type="SIPROTEC5_DOType_INS_INT32_V08.60.05_V07.90.00" />
			<DO name="Pos" type="SIPROTEC5_DOType_DPC_XCBR_Pos_V08.60.05_V07.90.00" />
			<DO name="BlkOpn" type="SIPROTEC5_DOType_SPC_status_only_V08.60.05_V07.90.00" />
			<DO name="BlkCls" type="SIPROTEC5_DOType_SPC_status_only_V08.60.05_V07.90.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_1000" lnClass="USER">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V08.60.05_V08.00.00" />
			<DO name="INTwert" type="SIPROTEC5_DOType_INC_UDEF_with_dataNs_V08.60.05_V08.60.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_1004" lnClass="SIMG">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V08.60.05_V08.00.00" />
			<DO name="InsAlm" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V08.60.05_V08.60.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_USER_Universal_4" lnClass="ZAXN">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V08.60.05_V08.00.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_USER_Universal_5" lnClass="TVTR">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V08.60.05_V08.00.00" />
			<DO name="FuFail" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V08.60.05_V08.60.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_1006" lnClass="USER">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V08.60.05_V08.00.00" />
			<DO name="Motorspg" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V08.60.05_V08.60.00" />
			<DO name="Federueber" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V08.60.05_V08.60.00" />
			<DO name="Schalterfall" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V08.60.05_V08.60.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_USER_Universal_1" lnClass="XCBR">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V08.60.05_V08.00.00" />
			<DO name="LSaus" type="SIPROTEC5_DOType_SPS_with_dataNs_V08.60.05_V08.40.00" />
			<DO name="LSein" type="SIPROTEC5_DOType_SPS_with_dataNs_V08.60.05_V08.40.00" />
			<DO name="LSrm" type="SIPROTEC5_DOType_DPS_UDEF_with_dataNs_V08.60.05_V08.60.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_1001" lnClass="XSWI">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V08.60.05_V08.00.00" />
			<DO name="ETaus" type="SIPROTEC5_DOType_SPS_with_dataNs_V08.60.05_V08.40.00" />
			<DO name="ETein" type="SIPROTEC5_DOType_SPS_with_dataNs_V08.60.05_V08.40.00" />
			<DO name="ETrm" type="SIPROTEC5_DOType_DPS_UDEF_with_dataNs_V08.60.05_V08.60.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_USER_Universal_6" lnClass="XSWI">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V08.60.05_V08.00.00" />
			<DO name="STaus" type="SIPROTEC5_DOType_SPS_with_dataNs_V08.60.05_V08.40.00" />
			<DO name="STein" type="SIPROTEC5_DOType_SPS_with_dataNs_V08.60.05_V08.40.00" />
			<DO name="STrm" type="SIPROTEC5_DOType_DPS_UDEF_with_dataNs_V08.60.05_V08.60.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_1025" lnClass="LSVS">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_OnOff_with_InitVal_V08.80.07_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V08.60.05_V08.00.00" />
			<DO name="St" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
			<DO name="SimSt" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
			<DO name="ConfRevNum" type="SIPROTEC5_DOType_INS_INT32_V08.60.05_V07.90.00" />
			<DO name="SvCBRef" type="SIPROTEC5_DOType_ORG_external_V08.60.05_V08.00.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_1021" lnClass="LPHD">
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V08.60.05_V08.00.00" />
			<DO name="PhyNam" type="SIPROTEC5_DOType_DPL_V08.60.05_V08.00.00" />
			<DO name="PhyHealth" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="Proxy" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
			<DO name="NamVariant" type="SIPROTEC5_DOType_VSD_readOnly_V08.80.07_V08.00.00" />
			<DO name="NamHzRtg" type="SIPROTEC5_DOType_VSD_readOnly_V08.80.07_V08.00.00" />
			<DO name="NamHoldRtg" type="SIPROTEC5_DOType_VSD_readOnly_V08.80.07_V08.00.00" />
			<DO name="NamMaxDlRtg" type="SIPROTEC5_DOType_VSD_readOnly_V08.80.07_V08.00.00" />
			<DO name="MaxDl" type="SIPROTEC5_DOType_ING_INT32_edit_V08.60.05_V08.60.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_1022" lnClass="TCTR">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V08.60.05_V08.00.00" />
			<DO name="ARtg" type="SIPROTEC5_DOType_ASG_FLOAT32_edit_V08.60.05_V08.60.00" />
			<DO name="Rat" type="SIPROTEC5_DOType_ASG_FLOAT32_readOnly_V08.60.05_V08.60.00" />
			<DO name="HzRtg" type="SIPROTEC5_DOType_ASG_FLOAT32_readOnly_V08.60.05_V08.60.00" />
			<DO name="Cor" type="SIPROTEC5_DOType_ASG_FLOAT32_edit_V08.60.05_V08.60.00" />
			<DO name="AmpSv" type="SIPROTEC5_DOType_SAV_VDEWChannelNumber_V08.60.05_V08.60.00" />
			<DO name="Trp" type="SIPROTEC5_DOType_ENG_TextList_Trp_edit_V08.60.05_V08.00.00" />
			<DO name="ScndTmms" type="SIPROTEC5_DOType_ING_INT32_div_readOnly_V08.60.05_V08.60.00" />
			<DO name="Clip" type="SIPROTEC5_DOType_ASG_FLOAT32_edit_V08.60.05_V08.60.00" />
			<DO name="AccMeas" type="SIPROTEC5_DOType_ENG_TextList_AccMeas_edit_V08.60.05_V08.40.00" />
			<DO name="AccPro" type="SIPROTEC5_DOType_ENG_TextList_AccPro_edit_V08.60.05_V08.40.00" />
			<DO name="HoldTmms" type="SIPROTEC5_DOType_ING_INT32_div_readOnly_V08.60.05_V08.60.00" />
			<DO name="NamAccRtg" type="SIPROTEC5_DOType_VSD_readOnly_V08.80.07_V08.00.00" />
			<DO name="NamARtg" type="SIPROTEC5_DOType_VSD_readOnly_V08.80.07_V08.00.00" />
			<DO name="NamClipRtg" type="SIPROTEC5_DOType_VSD_readOnly_V08.80.07_V08.00.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_1023" lnClass="TVTR">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V08.60.05_V08.00.00" />
			<DO name="VolSv" type="SIPROTEC5_DOType_SAV_VDEWChannelNumber_V08.60.05_V08.60.00" />
			<DO name="VRtg" type="SIPROTEC5_DOType_ASG_FLOAT32_readOnly_V08.60.05_V08.60.00" />
			<DO name="HzRtg" type="SIPROTEC5_DOType_ASG_FLOAT32_readOnly_V08.60.05_V08.60.00" />
			<DO name="Rat" type="SIPROTEC5_DOType_ASG_FLOAT32_readOnly_V08.60.05_V08.60.00" />
			<DO name="Cor" type="SIPROTEC5_DOType_ASG_FLOAT32_edit_V08.60.05_V08.60.00" />
			<DO name="Clip" type="SIPROTEC5_DOType_ASG_FLOAT32_edit_V08.60.05_V08.60.00" />
			<DO name="AccMeas" type="SIPROTEC5_DOType_ENG_TextList_AccMeas_edit_V08.60.05_V08.40.00" />
			<DO name="AccPro" type="SIPROTEC5_DOType_ENG_TextList_AccPro_edit_V08.60.05_V08.40.00" />
			<DO name="HoldTmms" type="SIPROTEC5_DOType_ING_INT32_div_readOnly_V08.60.05_V08.60.00" />
			<DO name="NamAccRtg" type="SIPROTEC5_DOType_VSD_readOnly_V08.80.07_V08.00.00" />
			<DO name="NamVRtg" type="SIPROTEC5_DOType_VSD_readOnly_V08.80.07_V08.00.00" />
			<DO name="NamClipRtg" type="SIPROTEC5_DOType_VSD_readOnly_V08.80.07_V08.00.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_1003" lnClass="LLN0">
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="GrRef" type="SIPROTEC5_DOType_ORG_V08.60.05_V08.00.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_TCTR" lnClass="TCTR">
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="ARtg" type="SIPROTEC5_DOType_ASG_FLOAT32_edit_V08.60.05_V08.60.00" />
			<DO name="HzRtg" type="SIPROTEC5_DOType_ASG_FLOAT32_readOnly_V08.60.05_V08.60.00" />
			<DO name="AmpSv" type="SIPROTEC5_DOType_SAV_VDEWChannelNumber_V08.60.05_V08.60.00" />
			<DO name="Trp" type="SIPROTEC5_DOType_ENG_TextList_Trp_edit_V08.60.05_V08.00.00" />
			<DO name="ScndTmms" type="SIPROTEC5_DOType_ING_INT32_div_readOnly_V08.60.05_V08.60.00" />
			<DO name="Clip" type="SIPROTEC5_DOType_ASG_FLOAT32_edit_V08.60.05_V08.60.00" />
			<DO name="HoldTmms" type="SIPROTEC5_DOType_ING_INT32_div_readOnly_V08.60.05_V08.60.00" />
			<DO name="NamAccRtg" type="SIPROTEC5_DOType_VSD_readOnly_V08.80.07_V08.00.00" />
			<DO name="NamARtg" type="SIPROTEC5_DOType_VSD_readOnly_V08.80.07_V08.00.00" />
			<DO name="NamClipRtg" type="SIPROTEC5_DOType_VSD_readOnly_V08.80.07_V08.00.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_TVTR" lnClass="TVTR">
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="VolSv" type="SIPROTEC5_DOType_SAV_VDEWChannelNumber_V08.60.05_V08.60.00" />
			<DO name="VRtg" type="SIPROTEC5_DOType_ASG_FLOAT32_readOnly_V08.60.05_V08.60.00" />
			<DO name="HzRtg" type="SIPROTEC5_DOType_ASG_FLOAT32_readOnly_V08.60.05_V08.60.00" />
			<DO name="Clip" type="SIPROTEC5_DOType_ASG_FLOAT32_edit_V08.60.05_V08.60.00" />
			<DO name="HoldTmms" type="SIPROTEC5_DOType_ING_INT32_div_readOnly_V08.60.05_V08.60.00" />
			<DO name="NamAccRtg" type="SIPROTEC5_DOType_VSD_readOnly_V08.80.07_V08.00.00" />
			<DO name="NamVRtg" type="SIPROTEC5_DOType_VSD_readOnly_V08.80.07_V08.00.00" />
			<DO name="NamClipRtg" type="SIPROTEC5_DOType_VSD_readOnly_V08.80.07_V08.00.00" />
			<DO name="FuFail" type="SIPROTEC5_DOType_SPS_with_dataNs_V08.60.05_V08.40.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_TVTR_1" lnClass="TVTR">
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="VolSv" type="SIPROTEC5_DOType_SAV_VDEWChannelNumber_V08.60.05_V08.60.00" />
			<DO name="VRtg" type="SIPROTEC5_DOType_ASG_FLOAT32_readOnly_V08.60.05_V08.60.00" />
			<DO name="HzRtg" type="SIPROTEC5_DOType_ASG_FLOAT32_readOnly_V08.60.05_V08.60.00" />
			<DO name="Clip" type="SIPROTEC5_DOType_ASG_FLOAT32_edit_V08.60.05_V08.60.00" />
			<DO name="HoldTmms" type="SIPROTEC5_DOType_ING_INT32_div_readOnly_V08.60.05_V08.60.00" />
			<DO name="NamAccRtg" type="SIPROTEC5_DOType_VSD_readOnly_V08.80.07_V08.00.00" />
			<DO name="NamVRtg" type="SIPROTEC5_DOType_VSD_readOnly_V08.80.07_V08.00.00" />
			<DO name="NamClipRtg" type="SIPROTEC5_DOType_VSD_readOnly_V08.80.07_V08.00.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LPHD_Application" lnClass="LPHD">
			<DO name="PhyNam" type="SIPROTEC5_DOType_DPL_V08.60.05_V08.00.00" />
			<DO name="PhyHealth" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="Proxy" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_1008" lnClass="CSWI">
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Pos" type="SIPROTEC5_DOType_DPC_CSWI_Pos_V08.60.05_V08.60.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_1011" lnClass="SIMG">
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="InsAlm" type="SIPROTEC5_DOType_SPS_with_dataNs_V08.60.05_V08.40.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_1014" lnClass="LLN0">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_OnBlockedTestTestBlocked_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="LEDRs" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_V08.60.05_V07.90.00" />
			<DO name="LocSta" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_and_dataNs_V08.60.05_V07.90.00" />
			<DO name="MltLev" type="SIPROTEC5_DOType_SPG_readOnly_with_dataNs_V08.60.05_V07.90.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_1016" lnClass="XSWI">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V08.60.05_V08.30.00" />
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" />
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V08.60.05_V08.00.00" />
			<DO name="Loc" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
			<DO name="OpCnt" type="SIPROTEC5_DOType_INS_INT32_V08.60.05_V07.90.00" />
			<DO name="Pos" type="SIPROTEC5_DOType_DPC_XCBR_Pos_V08.60.05_V07.90.00" />
			<DO name="BlkOpn" type="SIPROTEC5_DOType_SPC_status_only_V08.60.05_V07.90.00" />
			<DO name="BlkCls" type="SIPROTEC5_DOType_SPC_status_only_V08.60.05_V07.90.00" />
			<DO name="SwTyp" type="SIPROTEC5_DOType_ENS_SwitchType_V08.60.05_V07.90.00" />
			<DO name="OpnCmd" type="SIPROTEC5_DOType_SPS_with_dataNs_V08.60.05_V08.40.00" />
			<DO name="ClsCmd" type="SIPROTEC5_DOType_SPS_with_dataNs_V08.60.05_V08.40.00" />
			<DO name="STrm" type="SIPROTEC5_DOType_ComProxy_DPC_V08.80.07_V07.90.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_XSWI_Ctl_1" lnClass="XSWI">
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Loc" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
			<DO name="OpCnt" type="SIPROTEC5_DOType_INS_INT32_V08.60.05_V07.90.00" />
			<DO name="Pos" type="SIPROTEC5_DOType_DPC_XCBR_Pos_V08.60.05_V07.90.00" />
			<DO name="BlkOpn" type="SIPROTEC5_DOType_SPC_status_only_V08.60.05_V07.90.00" />
			<DO name="BlkCls" type="SIPROTEC5_DOType_SPC_status_only_V08.60.05_V07.90.00" />
			<DO name="SwTyp" type="SIPROTEC5_DOType_ENS_SwitchType_V08.60.05_V07.90.00" />
			<DO name="OpnCmd" type="SIPROTEC5_DOType_SPS_with_dataNs_V08.60.05_V08.40.00" />
			<DO name="ClsCmd" type="SIPROTEC5_DOType_SPS_with_dataNs_V08.60.05_V08.40.00" />
			<DO name="ETrm" type="SIPROTEC5_DOType_ComProxy_DPC_V08.80.07_V07.90.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_XCBR_3pol_Ctl" lnClass="XCBR">
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Loc" type="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" />
			<DO name="OpCnt" type="SIPROTEC5_DOType_INS_INT32_V08.60.05_V07.90.00" />
			<DO name="Pos" type="SIPROTEC5_DOType_DPC_XCBR_Pos_V08.60.05_V07.90.00" />
			<DO name="BlkOpn" type="SIPROTEC5_DOType_SPC_status_only_V08.60.05_V07.90.00" />
			<DO name="BlkCls" type="SIPROTEC5_DOType_SPC_status_only_V08.60.05_V07.90.00" />
			<DO name="TripOpnCmd" type="SIPROTEC5_DOType_SPS_with_dataNs_V08.60.05_V08.40.00" />
			<DO name="ClsCmd" type="SIPROTEC5_DOType_SPS_with_dataNs_V08.60.05_V08.40.00" />
			<DO name="LSrm" type="SIPROTEC5_DOType_ComProxy_DPC_V08.80.07_V07.90.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_USER_Universal" lnClass="CALH">
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Motorspg" type="SIPROTEC5_DOType_SPS_with_dataNs_V08.60.05_V08.40.00" />
			<DO name="Federueber" type="SIPROTEC5_DOType_SPS_with_dataNs_V08.60.05_V08.40.00" />
			<DO name="Schalterfall" type="SIPROTEC5_DOType_SPS_with_dataNs_V08.60.05_V08.40.00" />
			<DO name="Meldung200" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V08.60.05_V08.60.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PTRC_FG_Line_3ph" lnClass="PTRC">
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABCN_V08.80.07_V07.90.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PTRC_FN_Str_GABC_Without_DirRouting_Op_1_3pol" lnClass="PTRC">
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABC_Without_DirRouting_V08.80.07_V07.90.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PTOC_3ph_DOCP_3pol" lnClass="PTOC">
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABC_Without_DirRouting_V08.80.07_V07.90.00" />
			<DO name="Op" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_V08.80.07_V07.90.00" />
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_MMXU_OpMeas_Fund_3ph_Pres" lnClass="MMXU">
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" />
			<DO name="PhV" type="SIPROTEC5_DOType_WYE_ABCRes_V08.80.07_V08.60.00" />
			<DO name="A" type="SIPROTEC5_DOType_WYE_ABCRes_V08.80.07_V08.60.00" />
		</LNodeType>
		<LNodeType id="ITCI_SICAM" iedType="SICAM" lnClass="ITCI">
			<DO name="Beh" type="tcBeh_SICAM" />
			<DO name="NamPlt" type="tcLPL_SICAM" />
		</LNodeType>
		<DOType id="SIPROTEC5_DOType_SPG_readOnly_with_dataNs_V08.60.05_V07.90.00" cdc="SPG">
			<DA fc="SE" name="setVal" bType="BOOLEAN" valKind="RO" />
			<DA fc="EX" name="dataNs" bType="VisString255" valKind="RO">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPC_dir_with_nor_sec_and_dataNs_V08.60.05_V07.90.00" cdc="SPC">
			<DA fc="ST" name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V08.60.05_V07.90.00" />
			<DA fc="ST" name="ctlNum" bType="INT8U" />
			<DA dchg="true" fc="ST" name="stVal" bType="BOOLEAN" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA dchg="true" fc="CF" name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_dir_with_nor_sec_V08.60.05_V07.90.00">
				<Val>direct-with-normal-security</Val>
			</DA>
			<DA fc="EX" name="dataNs" bType="VisString255" valKind="RO">
				<Val>SIPROTEC5</Val>
			</DA>
			<DA fc="CO" name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Boolean_V08.60.05_V07.90.00" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPS_with_dataNs_V08.60.05_V08.40.00" cdc="SPS">
			<DA dchg="true" fc="ST" name="stVal" bType="BOOLEAN" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA fc="EX" name="dataNs" bType="VisString255" valKind="RO">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPC_dir_with_nor_sec_V08.60.05_V07.90.00" cdc="SPC">
			<DA fc="ST" name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V08.60.05_V07.90.00" />
			<DA fc="ST" name="ctlNum" bType="INT8U" />
			<DA dchg="true" fc="ST" name="stVal" bType="BOOLEAN" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA dchg="true" fc="CF" name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_dir_with_nor_sec_V08.60.05_V07.90.00">
				<Val>direct-with-normal-security</Val>
			</DA>
			<DA fc="CO" name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Boolean_V08.60.05_V07.90.00" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_LPL_NamPlt_for_LLN0_V08.60.05_V07.90.00" cdc="LPL">
			<DA fc="DC" name="vendor" bType="VisString255" valKind="RO">
				<Val>SIEMENS</Val>
			</DA>
			<DA fc="DC" name="swRev" bType="VisString255" valKind="RO" />
			<DA fc="DC" name="d" bType="VisString255" valKind="RO" />
			<DA fc="DC" name="configRev" bType="VisString255" valKind="RO" />
			<DA fc="EX" name="ldNs" bType="VisString255" valKind="RO" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_Health_V08.60.05_V07.90.00" cdc="ENS">
			<DA dchg="true" fc="ST" name="stVal" bType="Enum" type="SIPROTEC5_Textlist_Health_V08.60.05_V07.90.00" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_Behavior_V08.60.05_V08.30.00" cdc="ENS">
			<DA dchg="true" fc="ST" name="stVal" bType="Enum" type="SIPROTEC5_Textlist_Behavior_V08.60.05_V08.30.00" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_Mod_controllable_OnBlockedTestTestBlocked_with_InitVal_V08.60.05_V08.30.00" cdc="ENC">
			<DA fc="ST" name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V08.60.05_V07.90.00" />
			<DA fc="ST" name="ctlNum" bType="INT8U" />
			<DA dchg="true" fc="ST" name="stVal" bType="Enum" type="SIPROTEC5_Textlist_Behavior_OnBlockedTestTestBlocked_V08.60.05_V08.30.00" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA dchg="true" fc="CF" name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_dir_with_nor_sec_V08.60.05_V07.90.00">
				<Val>direct-with-normal-security</Val>
			</DA>
			<DA fc="CO" name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Mod_OnBlockedTestTestBlocked_V08.60.05_V08.30.00" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V08.60.05_V08.60.00" cdc="SPS">
			<DA dchg="true" fc="ST" name="stVal" bType="BOOLEAN" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA fc="SV" name="subEna" bType="BOOLEAN" />
			<DA fc="SV" name="subVal" bType="BOOLEAN" />
			<DA fc="SV" name="subQ" bType="Quality" />
			<DA fc="SV" name="subID" bType="VisString64" />
			<DA fc="BL" name="blkEna" bType="BOOLEAN" />
			<DA fc="EX" name="dataNs" bType="VisString255" valKind="RO">
				<Val>SIPROTEC5/userdefined</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V08.60.05_V08.00.00" cdc="LPL">
			<DA fc="DC" name="vendor" bType="VisString255" valKind="RO">
				<Val>SIEMENS</Val>
			</DA>
			<DA fc="DC" name="swRev" bType="VisString255" valKind="RO" />
			<DA fc="DC" name="d" bType="VisString255" valKind="RO" />
			<DA fc="DC" name="configRev" bType="VisString255" valKind="RO" />
			<DA fc="EX" name="lnNs" bType="VisString255" valKind="RO">
				<Val>IEC 61850-7-4:2007B</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_INS_INT32_with_units_V08.60.05_V08.60.00" cdc="INS">
			<DA dchg="true" fc="ST" name="stVal" bType="INT32" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA dchg="true" fc="CF" name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V08.60.05_V08.60.00" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPS_V08.60.05_V08.40.00" cdc="SPS">
			<DA dchg="true" fc="ST" name="stVal" bType="BOOLEAN" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_DPL_V08.60.05_V08.00.00" cdc="DPL">
			<DA fc="DC" name="vendor" bType="VisString255" valKind="RO" />
			<DA fc="DC" name="hwRev" bType="VisString255" valKind="RO" />
			<DA fc="DC" name="swRev" bType="VisString255" valKind="RO" />
			<DA fc="DC" name="serNum" bType="VisString255" valKind="RO" />
			<DA fc="DC" name="model" bType="VisString255" valKind="RO" />
			<DA fc="DC" name="location" bType="VisString255" valKind="RO" />
			<DA fc="DC" name="owner" bType="VisString255" valKind="RO" />
			<DA fc="DC" name="d" bType="VisString255" valKind="RO" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V08.60.05_V08.30.00" cdc="ENC">
			<DA dchg="true" fc="ST" name="stVal" bType="Enum" type="SIPROTEC5_Textlist_Behavior_V08.60.05_V08.30.00">
				<Val>on</Val>
			</DA>
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA dchg="true" fc="CF" name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_status_only_V08.60.05_V07.90.00">
				<Val>status-only</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_TSG_V08.60.05_V08.01.00" cdc="TSG">
			<DA fc="SE" name="setCal" bType="Struct" type="SIPROTEC5_DAType_CalendarTime_V08.60.05_V07.90.00" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPG_edit_V08.60.05_V07.90.00" cdc="SPG">
			<DA fc="SE" name="setVal" bType="BOOLEAN" valKind="Set" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_ING_INT32_edit_V08.60.05_V08.60.00" cdc="ING">
			<DA fc="SE" name="setVal" bType="INT32" valKind="Set" />
			<DA dchg="true" fc="CF" name="minVal" bType="INT32" valKind="RO">
				<Val>0</Val>
			</DA>
			<DA dchg="true" fc="CF" name="maxVal" bType="INT32" valKind="RO">
				<Val>0</Val>
			</DA>
			<DA dchg="true" fc="CF" name="stepSize" bType="INT32U" valKind="RO">
				<Val>0</Val>
			</DA>
			<DA dchg="true" fc="CF" name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V08.60.05_V08.60.00" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_TmSrcTyp_V08.60.05_V08.01.00" cdc="ENS">
			<DA dchg="true" fc="ST" name="stVal" bType="Enum" type="SIPROTEC5_Textlist_TmSrcTyp_V08.60.05_V08.01.00" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_VSS_V08.60.05_V07.90.00" cdc="VSS">
			<DA dchg="true" fc="ST" name="stVal" bType="VisString255" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_STS_V08.60.05_V07.90.00" cdc="STS">
			<DA dupd="true" fc="SR" name="objRef" bType="ObjRef" />
			<DA fc="SR" name="serviceType" bType="Enum" type="SIPROTEC5_Textlist_ServiceType_V08.60.05_V07.90.00" />
			<DA fc="SR" name="errorCode" bType="Enum" type="SIPROTEC5_Textlist_ServiceError_V08.60.05_V07.90.00" />
			<DA fc="SR" name="originatorID" bType="Octet64" />
			<DA fc="SR" name="t" bType="Timestamp" />
			<DA fc="SR" name="numOfSG" bType="INT8U" />
			<DA fc="SR" name="actSG" bType="INT8U" />
			<DA fc="SR" name="editSG" bType="INT8U" />
			<DA fc="SR" name="cnfEdit" bType="BOOLEAN" />
			<DA fc="SR" name="lActTm" bType="Timestamp" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_CST_V08.60.05_V07.90.00" cdc="CST">
			<DA dupd="true" fc="SR" name="objRef" bType="ObjRef" />
			<DA fc="SR" name="serviceType" bType="Enum" type="SIPROTEC5_Textlist_ServiceType_V08.60.05_V07.90.00" />
			<DA fc="SR" name="errorCode" bType="Enum" type="SIPROTEC5_Textlist_ServiceError_V08.60.05_V07.90.00" />
			<DA fc="SR" name="originatorID" bType="Octet64" />
			<DA fc="SR" name="t" bType="Timestamp" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_ORG_V08.60.05_V08.00.00" cdc="ORG">
			<DA dchg="true" fc="SP" name="setSrcRef" bType="ObjRef" valKind="RO" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_LPL_NamPlt_V08.60.05_V07.90.00" cdc="LPL">
			<DA fc="DC" name="vendor" bType="VisString255" valKind="RO">
				<Val>SIEMENS</Val>
			</DA>
			<DA fc="DC" name="swRev" bType="VisString255" valKind="RO" />
			<DA fc="DC" name="d" bType="VisString255" valKind="RO" />
			<DA fc="DC" name="configRev" bType="VisString255" valKind="RO" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPC_status_only_V08.60.05_V07.90.00" cdc="SPC">
			<DA dchg="true" fc="ST" name="stVal" bType="BOOLEAN" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA dchg="true" fc="CF" name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_status_only_V08.60.05_V07.90.00">
				<Val>status-only</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_DPC_XCBR_Pos_V08.60.05_V07.90.00" cdc="DPC">
			<DA fc="ST" name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V08.60.05_V07.90.00" />
			<DA fc="ST" name="ctlNum" bType="INT8U" />
			<DA dchg="true" fc="ST" name="stVal" bType="Dbpos" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA dchg="true" fc="ST" name="stSeld" bType="BOOLEAN" />
			<DA fc="SV" name="subEna" bType="BOOLEAN" />
			<DA fc="SV" name="subVal" bType="Dbpos" />
			<DA fc="SV" name="subQ" bType="Quality" />
			<DA fc="SV" name="subID" bType="VisString64" />
			<DA fc="BL" name="blkEna" bType="BOOLEAN" />
			<DA dchg="true" fc="CF" name="pulseConfig" bType="Struct" type="SIPROTEC5_DAType_PulseConfig_XCBR_V08.60.05_V07.90.00" />
			<DA dchg="true" fc="CF" name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_status_only_V08.60.05_V07.90.00">
				<Val>status-only</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_INS_INT32_V08.60.05_V07.90.00" cdc="INS">
			<DA dchg="true" fc="ST" name="stVal" bType="INT32" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_Mod_controllable_with_InitVal_V08.60.05_V08.30.00" cdc="ENC">
			<DA fc="ST" name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V08.60.05_V07.90.00" />
			<DA fc="ST" name="ctlNum" bType="INT8U" />
			<DA dchg="true" fc="ST" name="stVal" bType="Enum" type="SIPROTEC5_Textlist_Behavior_V08.60.05_V08.30.00" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA dchg="true" fc="CF" name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_dir_with_nor_sec_V08.60.05_V07.90.00">
				<Val>direct-with-normal-security</Val>
			</DA>
			<DA fc="CO" name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Mod_V08.60.05_V08.30.00" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPC_statusOnly_and_dir_with_nor_sec_V08.60.05_V07.90.00" cdc="SPC">
			<DA fc="ST" name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V08.60.05_V07.90.00" />
			<DA fc="ST" name="ctlNum" bType="INT8U" />
			<DA dchg="true" fc="ST" name="stVal" bType="BOOLEAN" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA dchg="true" fc="CF" name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_status_only_and_dir_with_nor_sec_V08.60.05_V07.90.00">
				<Val>direct-with-normal-security</Val>
			</DA>
			<DA fc="CO" name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Boolean_V08.60.05_V07.90.00" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_DPC_CSWI_Pos_V08.60.05_V08.60.00" cdc="DPC">
			<DA fc="ST" name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V08.60.05_V07.90.00" />
			<DA fc="ST" name="ctlNum" bType="INT8U" />
			<DA dchg="true" fc="ST" name="stVal" bType="Dbpos" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA dchg="true" fc="ST" name="stSeld" bType="BOOLEAN" />
			<DA dchg="true" fc="CF" name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_V08.60.05_V07.90.00">
				<Val>status-only</Val>
			</DA>
			<DA dchg="true" fc="CF" name="sboTimeout" bType="INT32U" valKind="RO">
				<Val>0</Val>
			</DA>
			<DA dchg="true" fc="CF" name="operTimeout" bType="INT32U" valKind="RO">
				<Val>0</Val>
			</DA>
			<DA fc="CO" name="SBO" bType="VisString129">
				<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
			</DA>
			<DA fc="CO" name="SBOw" bType="Struct" type="SIPROTEC5_DAType_Oper_Boolean_V08.60.05_V07.90.00" />
			<DA fc="CO" name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Boolean_V08.60.05_V07.90.00" />
			<DA fc="CO" name="Cancel" bType="Struct" type="SIPROTEC5_DAType_Cancel_Boolean_V08.60.05_V07.90.00" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_ING_INT32_div_readOnly_V08.60.05_V08.60.00" cdc="ING">
			<DA fc="SE" name="setVal" bType="INT32" valKind="RO" />
			<DA dchg="true" fc="CF" name="minVal" bType="INT32" valKind="RO">
				<Val>0</Val>
			</DA>
			<DA dchg="true" fc="CF" name="maxVal" bType="INT32" valKind="RO">
				<Val>0</Val>
			</DA>
			<DA dchg="true" fc="CF" name="stepSize" bType="INT32U" valKind="RO">
				<Val>0</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENG_TextList_AccPro_edit_V08.60.05_V08.40.00" cdc="ENG">
			<DA fc="SE" name="setVal" bType="Enum" valKind="Set" type="SIPROTEC5_EnType_InstrumentTransformerProtectionRatingKind_V08.60.05_V08.40.00" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENG_TextList_AccMeas_edit_V08.60.05_V08.40.00" cdc="ENG">
			<DA fc="SE" name="setVal" bType="Enum" valKind="Set" type="SIPROTEC5_EnType_InstrumentTransformerMeasurementRatingKind_V08.60.05_V08.00.00" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_ASG_FLOAT32_edit_V08.60.05_V08.60.00" cdc="ASG">
			<DA fc="SE" name="setMag" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_V08.60.05_V07.90.00" />
			<DA dchg="true" fc="CF" name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V08.60.05_V08.60.00" />
			<DA dchg="true" fc="CF" name="minVal" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_readOnly_V08.60.05_V07.90.00" />
			<DA dchg="true" fc="CF" name="maxVal" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_readOnly_V08.60.05_V07.90.00" />
			<DA dchg="true" fc="CF" name="stepSize" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_readOnly_V08.60.05_V07.90.00" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENG_TextList_Trp_edit_V08.60.05_V08.00.00" cdc="ENG">
			<DA fc="SE" name="setVal" bType="Enum" valKind="Set" type="SIPROTEC5_Textlist_Trp_V08.60.05_V08.00.00" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_SAV_VDEWChannelNumber_V08.60.05_V08.60.00" cdc="SAV">
			<DA fc="MX" name="instMag" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_INT32_V08.60.05_V07.90.00" />
			<DA qchg="true" fc="MX" name="q" bType="Quality" />
			<DA fc="MX" name="t" bType="Timestamp" />
			<DA dchg="true" fc="CF" name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V08.60.05_V08.60.00" />
			<DA dchg="true" fc="CF" name="sVC" bType="Struct" type="SIPROTEC5_DAType_ScaledValueConfig_readOnly_V08.60.05_V07.90.00" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_ASG_FLOAT32_readOnly_V08.60.05_V08.60.00" cdc="ASG">
			<DA fc="SE" name="setMag" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_readOnly_V08.60.05_V07.90.00" />
			<DA dchg="true" fc="CF" name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V08.60.05_V08.60.00" />
			<DA dchg="true" fc="CF" name="minVal" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_readOnly_V08.60.05_V07.90.00" />
			<DA dchg="true" fc="CF" name="maxVal" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_readOnly_V08.60.05_V07.90.00" />
			<DA dchg="true" fc="CF" name="stepSize" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_readOnly_V08.60.05_V07.90.00" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPC_dir_with_enh_sec_FnKey_on_V08.60.05_V07.90.00" cdc="SPC">
			<DA fc="ST" name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V08.60.05_V07.90.00" />
			<DA fc="ST" name="ctlNum" bType="INT8U" />
			<DA dchg="true" fc="ST" name="stVal" bType="BOOLEAN" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA dchg="true" fc="CF" name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_dir_with_enh_sec_V08.60.05_V07.90.00">
				<Val>direct-with-enhanced-security</Val>
			</DA>
			<DA dchg="true" fc="CF" name="operTimeout" bType="INT32U">
				<Val>0</Val>
			</DA>
			<DA fc="CO" name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Boolean_V08.60.05_V07.90.00" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_INC_UDEF_with_dataNs_V08.60.05_V08.60.00" cdc="INC">
			<DA fc="ST" name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V08.60.05_V07.90.00" />
			<DA fc="ST" name="ctlNum" bType="INT8U" />
			<DA dchg="true" fc="ST" name="stVal" bType="INT32" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA dchg="true" fc="ST" name="stSeld" bType="BOOLEAN" />
			<DA fc="SV" name="subEna" bType="BOOLEAN" />
			<DA fc="SV" name="subVal" bType="INT32" />
			<DA fc="SV" name="subQ" bType="Quality" />
			<DA fc="SV" name="subID" bType="VisString64" />
			<DA fc="BL" name="blkEna" bType="BOOLEAN" />
			<DA fc="CF" name="ctlModel" bType="Enum" type="SIPROTEC5_Textlist_ctlModel_V08.60.05_V07.90.00">
				<Val>direct-with-normal-security</Val>
			</DA>
			<DA dchg="true" fc="CF" name="sboTimeout" bType="INT32U">
				<Val>10000</Val>
			</DA>
			<DA dchg="true" fc="CF" name="sboClass" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_sboClass_V08.60.05_V07.90.00">
				<Val>operate-once</Val>
			</DA>
			<DA dchg="true" fc="CF" name="operTimeout" bType="INT32U">
				<Val>1000</Val>
			</DA>
			<DA fc="EX" name="dataNs" bType="VisString255" valKind="RO">
				<Val>SIPROTEC5/userdefined</Val>
			</DA>
			<DA fc="CO" name="SBO" bType="VisString129" />
			<DA fc="CO" name="SBOw" bType="Struct" type="SIPROTEC5_DAType_Oper_INT32_V08.60.05_V07.90.00" />
			<DA fc="CO" name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_INT32_V08.60.05_V07.90.00" />
			<DA fc="CO" name="Cancel" bType="Struct" type="SIPROTEC5_DAType_Cancel_INT32_V08.60.05_V07.90.00" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V08.60.05_V08.00.00" cdc="LPL">
			<DA fc="DC" name="vendor" bType="VisString255" valKind="RO">
				<Val>SIEMENS</Val>
			</DA>
			<DA fc="DC" name="swRev" bType="VisString255" valKind="RO" />
			<DA fc="DC" name="d" bType="VisString255" valKind="RO" />
			<DA fc="DC" name="configRev" bType="VisString255" valKind="RO" />
			<DA fc="EX" name="lnNs" bType="VisString255" valKind="RO">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_SwitchType_V08.60.05_V07.90.00" cdc="ENS">
			<DA dchg="true" fc="ST" name="stVal" bType="Enum" type="SIPROTEC5_EnType_SwitchType_V08.60.05_V07.90.00" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_ORG_external_V08.60.05_V08.00.00" cdc="ORG">
			<DA dchg="true" fc="SP" name="setSrcRef" bType="ObjRef" valKind="RO" valImport="true" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_DPS_UDEF_with_dataNs_V08.60.05_V08.60.00" cdc="DPS">
			<DA dchg="true" fc="ST" name="stVal" bType="Dbpos" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA fc="SV" name="subEna" bType="BOOLEAN" />
			<DA fc="SV" name="subVal" bType="Dbpos" />
			<DA fc="SV" name="subQ" bType="Quality" />
			<DA fc="SV" name="subID" bType="VisString64" />
			<DA fc="BL" name="blkEna" bType="BOOLEAN" />
			<DA fc="EX" name="dataNs" bType="VisString255" valKind="RO">
				<Val>SIPROTEC5/userdefined</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_Mod_controllable_OnOff_with_InitVal_V08.80.07_V08.30.00" cdc="ENC">
			<DA fc="ST" name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V08.60.05_V07.90.00" />
			<DA fc="ST" name="ctlNum" bType="INT8U" />
			<DA dchg="true" fc="ST" name="stVal" bType="Enum" type="SIPROTEC5_Textlist_Behavior_OnOff_V08.80.07_V07.90.00" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA dchg="true" fc="CF" name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_dir_with_nor_sec_V08.60.05_V07.90.00">
				<Val>direct-with-normal-security</Val>
			</DA>
			<DA fc="CO" name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Mod_OnOff_V08.80.07_V07.90.00" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_VSD_readOnly_V08.80.07_V08.00.00" cdc="VSD">
			<DA fc="DC" name="val" bType="VisString255" valKind="RO" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_ComProxy_DPC_V08.80.07_V07.90.00" cdc="DPC">
			<DA fc="ST" name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V08.60.05_V07.90.00" />
			<DA fc="ST" name="ctlNum" bType="INT8U" />
			<DA dchg="true" fc="ST" name="stVal" bType="Dbpos" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA dchg="true" fc="ST" name="stSeld" bType="BOOLEAN" />
			<DA dchg="true" fc="CF" name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_status_only_V08.60.05_V07.90.00">
				<Val>status-only</Val>
			</DA>
			<DA fc="EX" name="dataNs" bType="VisString255" valKind="RO">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ACD_PhsSel_GABCN_V08.80.07_V07.90.00" cdc="ACD">
			<DA dchg="true" fc="ST" name="general" bType="BOOLEAN" />
			<DA dchg="true" fc="ST" name="dirGeneral" bType="Enum" type="SIPROTEC5_Textlist_DirectionGeneral_V08.80.07_V07.90.00" />
			<DA dchg="true" fc="ST" name="phsA" bType="BOOLEAN" />
			<DA dchg="true" fc="ST" name="dirPhsA" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V08.80.07_V07.90.00" />
			<DA dchg="true" fc="ST" name="phsB" bType="BOOLEAN" />
			<DA dchg="true" fc="ST" name="dirPhsB" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V08.80.07_V07.90.00" />
			<DA dchg="true" fc="ST" name="phsC" bType="BOOLEAN" />
			<DA dchg="true" fc="ST" name="dirPhsC" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V08.80.07_V07.90.00" />
			<DA dchg="true" fc="ST" name="neut" bType="BOOLEAN" />
			<DA dchg="true" fc="ST" name="dirNeut" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V08.80.07_V07.90.00" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_ACD_PhsSel_GABC_Without_DirRouting_V08.80.07_V07.90.00" cdc="ACD">
			<DA dchg="true" fc="ST" name="general" bType="BOOLEAN" />
			<DA dchg="true" fc="ST" name="dirGeneral" bType="Enum" type="SIPROTEC5_Textlist_DirectionGeneral_V08.80.07_V07.90.00" />
			<DA dchg="true" fc="ST" name="phsA" bType="BOOLEAN" />
			<DA dchg="true" fc="ST" name="dirPhsA" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V08.80.07_V07.90.00" />
			<DA dchg="true" fc="ST" name="phsB" bType="BOOLEAN" />
			<DA dchg="true" fc="ST" name="dirPhsB" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V08.80.07_V07.90.00" />
			<DA dchg="true" fc="ST" name="phsC" bType="BOOLEAN" />
			<DA dchg="true" fc="ST" name="dirPhsC" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V08.80.07_V07.90.00" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_ACT_1_3pol_GABC_V08.80.07_V07.90.00" cdc="ACT">
			<DA dchg="true" fc="ST" name="general" bType="BOOLEAN" />
			<DA dchg="true" fc="ST" name="phsA" bType="BOOLEAN" />
			<DA dchg="true" fc="ST" name="phsB" bType="BOOLEAN" />
			<DA dchg="true" fc="ST" name="phsC" bType="BOOLEAN" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_WYE_ABCRes_V08.80.07_V08.60.00" cdc="WYE">
			<SDO name="phsA" type="SIPROTEC5_DOType_CMV_without_convertions_V08.80.07_V08.60.00" />
			<SDO name="phsB" type="SIPROTEC5_DOType_CMV_without_convertions_V08.80.07_V08.60.00" />
			<SDO name="phsC" type="SIPROTEC5_DOType_CMV_without_convertions_V08.80.07_V08.60.00" />
			<SDO name="res" type="SIPROTEC5_DOType_CMV_without_convertions_V08.80.07_V08.60.00" />
		</DOType>
		<DOType id="SIPROTEC5_DOType_CMV_without_convertions_V08.80.07_V08.60.00" cdc="CMV">
			<DA fc="MX" name="instCVal" bType="Struct" type="SIPROTEC5_DAType_Vector_V08.80.07_V07.90.00" />
			<DA dchg="true" fc="MX" name="cVal" bType="Struct" type="SIPROTEC5_DAType_Vector_V08.80.07_V07.90.00" />
			<DA qchg="true" fc="MX" name="q" bType="Quality" />
			<DA fc="MX" name="t" bType="Timestamp" />
			<DA dchg="true" fc="CF" name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V08.60.05_V08.60.00" />
			<DA dchg="true" fc="CF" name="db" bType="INT32U" valKind="Set">
				<Val>0</Val>
			</DA>
			<DA dchg="true" fc="CF" name="dbAng" bType="INT32U" valKind="Set">
				<Val>333</Val>
			</DA>
			<DA dchg="true" fc="CF" name="dbRef" bType="FLOAT32" valKind="RO">
				<Val>0</Val>
			</DA>
			<DA dchg="true" fc="CF" name="dbAngRef" bType="FLOAT32" valKind="RO">
				<Val>360</Val>
			</DA>
		</DOType>
		<DOType id="tcBeh_SICAM" iedType="SICAM" cdc="ENS">
			<DA dchg="true" fc="ST" name="stVal" bType="Enum" type="BehaviourModeKind" />
			<DA qchg="true" fc="ST" name="q" bType="Quality" />
			<DA fc="ST" name="t" bType="Timestamp" />
			<DA fc="DC" name="d" bType="VisString255" />
		</DOType>
		<DOType id="tcLPL_SICAM" iedType="SICAM" cdc="LPL">
			<DA fc="DC" name="vendor" bType="VisString255" valKind="RO">
				<Val>Siemens AG</Val>
			</DA>
			<DA fc="DC" name="swRev" bType="VisString255">
				<Val>8.06</Val>
			</DA>
			<DA fc="DC" name="d" bType="VisString255" valKind="RO">
				<Val>SICAM PAS/PQS</Val>
			</DA>
			<DA fc="DC" name="configRev" bType="VisString255">
				<Val>1</Val>
			</DA>
			<DA fc="EX" name="lnNs" bType="VisString255" valKind="RO">
				<Val>IEC 61850-7-4:2007</Val>
			</DA>
		</DOType>
		<DAType id="SIPROTEC5_DAType_origin_V08.60.05_V07.90.00">
			<BDA name="orCat" bType="Enum" type="SIPROTEC5_Textlist_orCategory_V08.60.05_V07.90.00" />
			<BDA name="orIdent" bType="Octet64" />
		</DAType>
		<DAType id="SIPROTEC5_DAType_Oper_Boolean_V08.60.05_V07.90.00">
			<BDA name="ctlVal" bType="BOOLEAN" />
			<BDA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V08.60.05_V07.90.00" />
			<BDA name="ctlNum" bType="INT8U" />
			<BDA name="T" bType="Timestamp" />
			<BDA name="Test" bType="BOOLEAN" />
			<BDA name="Check" bType="Check" />
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Oper_Mod_OnBlockedTestTestBlocked_V08.60.05_V08.30.00">
			<BDA name="ctlVal" bType="Enum" type="SIPROTEC5_Textlist_Behavior_OnBlockedTestTestBlocked_V08.60.05_V08.30.00" />
			<BDA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V08.60.05_V07.90.00" />
			<BDA name="ctlNum" bType="INT8U" />
			<BDA name="T" bType="Timestamp" />
			<BDA name="Test" bType="BOOLEAN" />
			<BDA name="Check" bType="Check" />
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Units_1_V08.60.05_V08.60.00">
			<BDA name="SIUnit" bType="Enum" valKind="RO" type="SIPROTEC5_EnType_SIUnit_V08.60.05_V08.60.00" />
			<BDA name="multiplier" bType="Enum" valKind="RO" type="SIPROTEC5_EnType_Multiplier_V08.60.05_V07.90.00" />
		</DAType>
		<DAType id="SIPROTEC5_DAType_CalendarTime_V08.60.05_V07.90.00">
			<BDA name="occ" bType="INT16U" />
			<BDA name="occType" bType="Enum" type="SIPROTEC5_EnType_Cal_Occ_Type_V08.60.05_V07.90.00" />
			<BDA name="occPer" bType="Enum" type="SIPROTEC5_EnType_Cal_Occ_Period_V08.60.05_V07.90.00" />
			<BDA name="weekDay" bType="Enum" type="SIPROTEC5_EnType_Cal_WeekDay_V08.60.05_V07.90.00" />
			<BDA name="month" bType="Enum" type="SIPROTEC5_EnType_Cal_Month_V08.60.05_V07.90.00" />
			<BDA name="day" bType="INT8U" />
			<BDA name="hr" bType="INT8U" />
			<BDA name="mn" bType="INT8U" />
		</DAType>
		<DAType id="SIPROTEC5_DAType_PulseConfig_XCBR_V08.60.05_V07.90.00">
			<BDA name="cmdQual" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_PulseConfigCmdQual_V08.60.05_V07.90.00" />
			<BDA name="onDur" bType="INT32U" valKind="RO" />
			<BDA name="offDur" bType="INT32U" valKind="RO" />
			<BDA name="numPls" bType="INT32U" valKind="RO" />
		</DAType>
		<DAType id="SIPROTEC5_DAType_Oper_Mod_V08.60.05_V08.30.00">
			<BDA name="ctlVal" bType="Enum" type="SIPROTEC5_Textlist_Behavior_V08.60.05_V08.30.00" />
			<BDA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V08.60.05_V07.90.00" />
			<BDA name="ctlNum" bType="INT8U" />
			<BDA name="T" bType="Timestamp" />
			<BDA name="Test" bType="BOOLEAN" />
			<BDA name="Check" bType="Check" />
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Cancel_Boolean_V08.60.05_V07.90.00">
			<BDA name="ctlVal" bType="BOOLEAN" />
			<BDA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V08.60.05_V07.90.00" />
			<BDA name="ctlNum" bType="INT8U" />
			<BDA name="T" bType="Timestamp" />
			<BDA name="Test" bType="BOOLEAN" />
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="SIPROTEC5_DAType_AnalogValue_FLOAT32_V08.60.05_V07.90.00">
			<BDA name="f" bType="FLOAT32" valKind="Set">
				<Val>0</Val>
			</BDA>
		</DAType>
		<DAType id="SIPROTEC5_DAType_AnalogValue_FLOAT32_readOnly_V08.60.05_V07.90.00">
			<BDA name="f" bType="FLOAT32" valKind="RO">
				<Val>0</Val>
			</BDA>
		</DAType>
		<DAType id="SIPROTEC5_DAType_AnalogValue_INT32_V08.60.05_V07.90.00">
			<BDA name="i" bType="INT32" />
		</DAType>
		<DAType id="SIPROTEC5_DAType_ScaledValueConfig_readOnly_V08.60.05_V07.90.00">
			<BDA name="scaleFactor" bType="FLOAT32" valKind="RO">
				<Val>1</Val>
			</BDA>
			<BDA name="offset" bType="FLOAT32" valKind="RO">
				<Val>0</Val>
			</BDA>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Oper_INT32_V08.60.05_V07.90.00">
			<BDA name="ctlVal" bType="INT32" />
			<BDA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V08.60.05_V07.90.00" />
			<BDA name="ctlNum" bType="INT8U" />
			<BDA name="T" bType="Timestamp" />
			<BDA name="Test" bType="BOOLEAN" />
			<BDA name="Check" bType="Check" />
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Cancel_INT32_V08.60.05_V07.90.00">
			<BDA name="ctlVal" bType="INT32" />
			<BDA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V08.60.05_V07.90.00" />
			<BDA name="ctlNum" bType="INT8U" />
			<BDA name="T" bType="Timestamp" />
			<BDA name="Test" bType="BOOLEAN" />
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Oper_Mod_OnOff_V08.80.07_V07.90.00">
			<BDA name="ctlVal" bType="Enum" type="SIPROTEC5_Textlist_Behavior_OnOff_V08.80.07_V07.90.00" />
			<BDA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V08.60.05_V07.90.00" />
			<BDA name="ctlNum" bType="INT8U" />
			<BDA name="T" bType="Timestamp" />
			<BDA name="Test" bType="BOOLEAN" />
			<BDA name="Check" bType="Check" />
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Vector_V08.80.07_V07.90.00">
			<BDA name="mag" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_V08.60.05_V07.90.00" />
			<BDA name="ang" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_V08.60.05_V07.90.00" />
		</DAType>
		<EnumType id="SIPROTEC5_Textlist_orCategory_V08.60.05_V07.90.00">
			<EnumVal ord="0">not-supported</EnumVal>
			<EnumVal ord="1">bay-control</EnumVal>
			<EnumVal ord="2">station-control</EnumVal>
			<EnumVal ord="3">remote-control</EnumVal>
			<EnumVal ord="4">automatic-bay</EnumVal>
			<EnumVal ord="5">automatic-station</EnumVal>
			<EnumVal ord="6">automatic-remote</EnumVal>
			<EnumVal ord="7">maintenance</EnumVal>
			<EnumVal ord="8">process</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_ctlModel_dir_with_nor_sec_V08.60.05_V07.90.00">
			<EnumVal ord="1">direct-with-normal-security</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_Health_V08.60.05_V07.90.00">
			<EnumVal ord="1">Ok</EnumVal>
			<EnumVal ord="2">Warning</EnumVal>
			<EnumVal ord="3">Alarm</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_Behavior_V08.60.05_V08.30.00">
			<EnumVal ord="1">on</EnumVal>
			<EnumVal ord="2">blocked</EnumVal>
			<EnumVal ord="3">test</EnumVal>
			<EnumVal ord="4">test/blocked</EnumVal>
			<EnumVal ord="5">off</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_Behavior_OnBlockedTestTestBlocked_V08.60.05_V08.30.00">
			<EnumVal ord="1">on</EnumVal>
			<EnumVal ord="2">blocked</EnumVal>
			<EnumVal ord="3">test</EnumVal>
			<EnumVal ord="4">test/blocked</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_SIUnit_V08.60.05_V08.60.00">
			<EnumVal ord="-38">kV/mA</EnumVal>
			<EnumVal ord="-37">kA/V</EnumVal>
			<EnumVal ord="-36">ohm/m</EnumVal>
			<EnumVal ord="-35">ppm/°C</EnumVal>
			<EnumVal ord="-34">F/m</EnumVal>
			<EnumVal ord="-33">H/m</EnumVal>
			<EnumVal ord="-32">ms/kPa</EnumVal>
			<EnumVal ord="-31">kPa</EnumVal>
			<EnumVal ord="-30">ms/V</EnumVal>
			<EnumVal ord="-29">ms/K</EnumVal>
			<EnumVal ord="-28">V/s</EnumVal>
			<EnumVal ord="-27">I/Ir*s</EnumVal>
			<EnumVal ord="-26">1/week</EnumVal>
			<EnumVal ord="-25">1/d</EnumVal>
			<EnumVal ord="-24">1/h</EnumVal>
			<EnumVal ord="-23">1/min</EnumVal>
			<EnumVal ord="-22">periods</EnumVal>
			<EnumVal ord="-21">GB</EnumVal>
			<EnumVal ord="-19">cycle</EnumVal>
			<EnumVal ord="-18">mile</EnumVal>
			<EnumVal ord="-17">inch</EnumVal>
			<EnumVal ord="-16">°F</EnumVal>
			<EnumVal ord="-15">I/IrObj</EnumVal>
			<EnumVal ord="-14">MB</EnumVal>
			<EnumVal ord="-13">KB</EnumVal>
			<EnumVal ord="-12">Bytes</EnumVal>
			<EnumVal ord="-11">p.u.</EnumVal>
			<EnumVal ord="-10">day(s)</EnumVal>
			<EnumVal ord="-7">%</EnumVal>
			<EnumVal ord="-4">F/mi</EnumVal>
			<EnumVal ord="-3">ohm/mi</EnumVal>
			<EnumVal ord="-2">F/km</EnumVal>
			<EnumVal ord="-1">ohm/km</EnumVal>
			<EnumVal ord="1" />
			<EnumVal ord="2">m</EnumVal>
			<EnumVal ord="3">kg</EnumVal>
			<EnumVal ord="4">s</EnumVal>
			<EnumVal ord="5">A</EnumVal>
			<EnumVal ord="6">K</EnumVal>
			<EnumVal ord="7">mol</EnumVal>
			<EnumVal ord="8">cd</EnumVal>
			<EnumVal ord="9">deg</EnumVal>
			<EnumVal ord="10">rad</EnumVal>
			<EnumVal ord="11">sr</EnumVal>
			<EnumVal ord="21">Gy</EnumVal>
			<EnumVal ord="23">°C</EnumVal>
			<EnumVal ord="24">Sv</EnumVal>
			<EnumVal ord="25">F</EnumVal>
			<EnumVal ord="26">C</EnumVal>
			<EnumVal ord="27">S</EnumVal>
			<EnumVal ord="28">H</EnumVal>
			<EnumVal ord="29">V</EnumVal>
			<EnumVal ord="30">ohm</EnumVal>
			<EnumVal ord="31">J</EnumVal>
			<EnumVal ord="32">N</EnumVal>
			<EnumVal ord="33">Hz</EnumVal>
			<EnumVal ord="34">lx</EnumVal>
			<EnumVal ord="35">Lm</EnumVal>
			<EnumVal ord="36">Wb</EnumVal>
			<EnumVal ord="37">T</EnumVal>
			<EnumVal ord="38">W</EnumVal>
			<EnumVal ord="39">Pa</EnumVal>
			<EnumVal ord="41">m²</EnumVal>
			<EnumVal ord="42">m³</EnumVal>
			<EnumVal ord="43">m/s</EnumVal>
			<EnumVal ord="44">m/s²</EnumVal>
			<EnumVal ord="45">m³/s</EnumVal>
			<EnumVal ord="46">m/m³</EnumVal>
			<EnumVal ord="47">M</EnumVal>
			<EnumVal ord="48">kg/m³</EnumVal>
			<EnumVal ord="49">m²/s</EnumVal>
			<EnumVal ord="50">W/m K</EnumVal>
			<EnumVal ord="51">J/K</EnumVal>
			<EnumVal ord="52">ppm</EnumVal>
			<EnumVal ord="53">1/s</EnumVal>
			<EnumVal ord="54">rad/s</EnumVal>
			<EnumVal ord="55">W/m²</EnumVal>
			<EnumVal ord="56">J/m²</EnumVal>
			<EnumVal ord="57">S/m</EnumVal>
			<EnumVal ord="58">K/s</EnumVal>
			<EnumVal ord="59">Pa/s</EnumVal>
			<EnumVal ord="60">J/kg K</EnumVal>
			<EnumVal ord="61">VA</EnumVal>
			<EnumVal ord="63">VAr</EnumVal>
			<EnumVal ord="64">phi</EnumVal>
			<EnumVal ord="65">cos(phi)</EnumVal>
			<EnumVal ord="66">Vs</EnumVal>
			<EnumVal ord="67">V²</EnumVal>
			<EnumVal ord="68">As</EnumVal>
			<EnumVal ord="69">A²</EnumVal>
			<EnumVal ord="70">A²t</EnumVal>
			<EnumVal ord="71">VAh</EnumVal>
			<EnumVal ord="72">Wh</EnumVal>
			<EnumVal ord="73">VArh</EnumVal>
			<EnumVal ord="74">V/Hz</EnumVal>
			<EnumVal ord="75">Hz/s</EnumVal>
			<EnumVal ord="76">char</EnumVal>
			<EnumVal ord="77">char/s</EnumVal>
			<EnumVal ord="78">kgm²</EnumVal>
			<EnumVal ord="79">dB</EnumVal>
			<EnumVal ord="80">J/Wh</EnumVal>
			<EnumVal ord="81">W/s</EnumVal>
			<EnumVal ord="82">l/s</EnumVal>
			<EnumVal ord="83">dBm</EnumVal>
			<EnumVal ord="84">h</EnumVal>
			<EnumVal ord="85">min</EnumVal>
			<EnumVal ord="86">'</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_Multiplier_V08.60.05_V07.90.00">
			<EnumVal ord="-24">y</EnumVal>
			<EnumVal ord="-21">z</EnumVal>
			<EnumVal ord="-18">a</EnumVal>
			<EnumVal ord="-15">f</EnumVal>
			<EnumVal ord="-12">p</EnumVal>
			<EnumVal ord="-9">n</EnumVal>
			<EnumVal ord="-6">µ</EnumVal>
			<EnumVal ord="-3">m</EnumVal>
			<EnumVal ord="-2">c</EnumVal>
			<EnumVal ord="-1">d</EnumVal>
			<EnumVal ord="0" />
			<EnumVal ord="1">da</EnumVal>
			<EnumVal ord="2">h</EnumVal>
			<EnumVal ord="3">k</EnumVal>
			<EnumVal ord="6">M</EnumVal>
			<EnumVal ord="9">G</EnumVal>
			<EnumVal ord="12">T</EnumVal>
			<EnumVal ord="15">P</EnumVal>
			<EnumVal ord="18">E</EnumVal>
			<EnumVal ord="21">Z</EnumVal>
			<EnumVal ord="24">Y</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_ctlModel_status_only_V08.60.05_V07.90.00">
			<EnumVal ord="0">status-only</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_Cal_Occ_Type_V08.60.05_V07.90.00">
			<EnumVal ord="0">Time</EnumVal>
			<EnumVal ord="1">WeekDay</EnumVal>
			<EnumVal ord="2">WeekOfYear</EnumVal>
			<EnumVal ord="3">DayOfMonth</EnumVal>
			<EnumVal ord="4">DayOfYear</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_Cal_Occ_Period_V08.60.05_V07.90.00">
			<EnumVal ord="0">Hour</EnumVal>
			<EnumVal ord="1">Day</EnumVal>
			<EnumVal ord="2">Week</EnumVal>
			<EnumVal ord="3">Month</EnumVal>
			<EnumVal ord="4">Year</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_Cal_WeekDay_V08.60.05_V07.90.00">
			<EnumVal ord="1">Monday</EnumVal>
			<EnumVal ord="2">Tuesday</EnumVal>
			<EnumVal ord="3">Wednesday</EnumVal>
			<EnumVal ord="4">Thursday</EnumVal>
			<EnumVal ord="5">Friday</EnumVal>
			<EnumVal ord="6">Saturday</EnumVal>
			<EnumVal ord="7">Sunday</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_Cal_Month_V08.60.05_V07.90.00">
			<EnumVal ord="1">January</EnumVal>
			<EnumVal ord="2">February</EnumVal>
			<EnumVal ord="3">March</EnumVal>
			<EnumVal ord="4">April</EnumVal>
			<EnumVal ord="5">May</EnumVal>
			<EnumVal ord="6">June</EnumVal>
			<EnumVal ord="7">July</EnumVal>
			<EnumVal ord="8">August</EnumVal>
			<EnumVal ord="9">September</EnumVal>
			<EnumVal ord="10">October</EnumVal>
			<EnumVal ord="11">November</EnumVal>
			<EnumVal ord="12">December</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_TmSrcTyp_V08.60.05_V08.01.00">
			<EnumVal ord="-15">ERR</EnumVal>
			<EnumVal ord="-14">T104</EnumVal>
			<EnumVal ord="-13">T103</EnumVal>
			<EnumVal ord="-12">RTC</EnumVal>
			<EnumVal ord="-11">IEEE1588</EnumVal>
			<EnumVal ord="-10">EXTERN_SIPROTEC</EnumVal>
			<EnumVal ord="-9">MINUTE_PULS</EnumVal>
			<EnumVal ord="-8">DNP30</EnumVal>
			<EnumVal ord="-7">MODBUS</EnumVal>
			<EnumVal ord="-6">PROFIBUS</EnumVal>
			<EnumVal ord="-5">GALILEO</EnumVal>
			<EnumVal ord="-4">SYNC_BOX</EnumVal>
			<EnumVal ord="-3">DCF77</EnumVal>
			<EnumVal ord="-2">GPS</EnumVal>
			<EnumVal ord="-1">HMI</EnumVal>
			<EnumVal ord="1">Unknown</EnumVal>
			<EnumVal ord="2">SNTP</EnumVal>
			<EnumVal ord="3">PTP</EnumVal>
			<EnumVal ord="4">IRIG-B</EnumVal>
			<EnumVal ord="5">Substation internal</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_ServiceType_V08.60.05_V07.90.00">
			<EnumVal ord="-3">CancelEditSG</EnumVal>
			<EnumVal ord="-2">None</EnumVal>
			<EnumVal ord="-1">Unknown</EnumVal>
			<EnumVal ord="1">Associate</EnumVal>
			<EnumVal ord="2">Abort</EnumVal>
			<EnumVal ord="3">Release</EnumVal>
			<EnumVal ord="4">GetServerDirectory</EnumVal>
			<EnumVal ord="5">GetLogicalDeviceDirectory</EnumVal>
			<EnumVal ord="6">GetAllDataValues</EnumVal>
			<EnumVal ord="7">GetDataValues</EnumVal>
			<EnumVal ord="8">SetDataValues</EnumVal>
			<EnumVal ord="9">GetDataDirectory</EnumVal>
			<EnumVal ord="10">GetDataDefinition</EnumVal>
			<EnumVal ord="11">GetDataSetValues</EnumVal>
			<EnumVal ord="12">SetDataSetValues</EnumVal>
			<EnumVal ord="13">CreateDataSet</EnumVal>
			<EnumVal ord="14">DeleteDataSet</EnumVal>
			<EnumVal ord="15">GetDataSetDirectory</EnumVal>
			<EnumVal ord="16">SelectActiveSG</EnumVal>
			<EnumVal ord="17">SelectEditSG</EnumVal>
			<EnumVal ord="18">SetEditSGValue</EnumVal>
			<EnumVal ord="19">ConfirmEditSGValues</EnumVal>
			<EnumVal ord="20">GetEditSGValue</EnumVal>
			<EnumVal ord="21">GetSGCBValues</EnumVal>
			<EnumVal ord="22">Report</EnumVal>
			<EnumVal ord="23">GetBRCBValues</EnumVal>
			<EnumVal ord="24">SetBRCBValues</EnumVal>
			<EnumVal ord="25">GetURCBValues</EnumVal>
			<EnumVal ord="26">SetURCBValues</EnumVal>
			<EnumVal ord="27">GetLCBValues</EnumVal>
			<EnumVal ord="28">SetLCBValues</EnumVal>
			<EnumVal ord="29">QueryLogByTime</EnumVal>
			<EnumVal ord="30">QueryLogAfter</EnumVal>
			<EnumVal ord="31">GetLogStatusValues</EnumVal>
			<EnumVal ord="32">SendGOOSEMessage</EnumVal>
			<EnumVal ord="33">GetGoCBValues</EnumVal>
			<EnumVal ord="34">SetGoCBValues</EnumVal>
			<EnumVal ord="35">GetGoReference</EnumVal>
			<EnumVal ord="36">GetGOOSEElementNumber</EnumVal>
			<EnumVal ord="37">SendMSVMessage</EnumVal>
			<EnumVal ord="38">GetMSVCBValues</EnumVal>
			<EnumVal ord="39">SetMSVCBValues</EnumVal>
			<EnumVal ord="40">SendUSVMessage</EnumVal>
			<EnumVal ord="41">GetUSVCBValues</EnumVal>
			<EnumVal ord="42">SetUSVCBValues</EnumVal>
			<EnumVal ord="43">Select</EnumVal>
			<EnumVal ord="44">SelectWithValue</EnumVal>
			<EnumVal ord="45">Cancel</EnumVal>
			<EnumVal ord="46">Operate</EnumVal>
			<EnumVal ord="47">CommandTermination</EnumVal>
			<EnumVal ord="48">TimeActivatedOperate</EnumVal>
			<EnumVal ord="49">GetFile</EnumVal>
			<EnumVal ord="50">SetFile</EnumVal>
			<EnumVal ord="51">DeleteFile</EnumVal>
			<EnumVal ord="52">GetFileAttributeValues</EnumVal>
			<EnumVal ord="53">TimeSynchronization</EnumVal>
			<EnumVal ord="54">InternalChange</EnumVal>
			<EnumVal ord="55">GetLogicalNodeDirectory</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_ServiceError_V08.60.05_V07.90.00">
			<EnumVal ord="0">no-error</EnumVal>
			<EnumVal ord="1">instance-not-available</EnumVal>
			<EnumVal ord="2">instance-in-use</EnumVal>
			<EnumVal ord="3">access-violation</EnumVal>
			<EnumVal ord="4">access-not-allowed-in-current-state</EnumVal>
			<EnumVal ord="5">parameter-value-inappropriate</EnumVal>
			<EnumVal ord="6">parameter-value-inconsistent</EnumVal>
			<EnumVal ord="7">class-not-supported</EnumVal>
			<EnumVal ord="8">instance-locked-by-other-client</EnumVal>
			<EnumVal ord="9">control-must-be-selected</EnumVal>
			<EnumVal ord="10">type-conflict</EnumVal>
			<EnumVal ord="11">failed-due-to-communications-constraint</EnumVal>
			<EnumVal ord="12">failed-due-to-server-constraint</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_PulseConfigCmdQual_V08.60.05_V07.90.00">
			<EnumVal ord="0">pulse</EnumVal>
			<EnumVal ord="1">persistent</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_ctlModel_status_only_and_dir_with_nor_sec_V08.60.05_V07.90.00">
			<EnumVal ord="0">status-only</EnumVal>
			<EnumVal ord="1">direct-with-normal-security</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_ctlModel_V08.60.05_V07.90.00">
			<EnumVal ord="0">status-only</EnumVal>
			<EnumVal ord="1">direct-with-normal-security</EnumVal>
			<EnumVal ord="2">sbo-with-normal-security</EnumVal>
			<EnumVal ord="3">direct-with-enhanced-security</EnumVal>
			<EnumVal ord="4">sbo-with-enhanced-security</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_InstrumentTransformerProtectionRatingKind_V08.60.05_V08.40.00">
			<EnumVal ord="1">1</EnumVal>
			<EnumVal ord="2">2</EnumVal>
			<EnumVal ord="3">3</EnumVal>
			<EnumVal ord="4">5</EnumVal>
			<EnumVal ord="5">6</EnumVal>
			<EnumVal ord="6">10</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_InstrumentTransformerMeasurementRatingKind_V08.60.05_V08.00.00">
			<EnumVal ord="1">0.05</EnumVal>
			<EnumVal ord="2">0.1</EnumVal>
			<EnumVal ord="3">0.2</EnumVal>
			<EnumVal ord="4">0.2S</EnumVal>
			<EnumVal ord="5">0.5</EnumVal>
			<EnumVal ord="6">0.5S</EnumVal>
			<EnumVal ord="7">1</EnumVal>
			<EnumVal ord="8">3</EnumVal>
			<EnumVal ord="9">5</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_Trp_V08.60.05_V08.00.00">
			<EnumVal ord="1">Unknown</EnumVal>
			<EnumVal ord="2">P</EnumVal>
			<EnumVal ord="3">PR</EnumVal>
			<EnumVal ord="4">PX</EnumVal>
			<EnumVal ord="5">PXR</EnumVal>
			<EnumVal ord="6">TPX</EnumVal>
			<EnumVal ord="7">TPY</EnumVal>
			<EnumVal ord="8">TPZ</EnumVal>
			<EnumVal ord="9">TPE</EnumVal>
			<EnumVal ord="10">TPS</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_ctlModel_dir_with_enh_sec_V08.60.05_V07.90.00">
			<EnumVal ord="3">direct-with-enhanced-security</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_sboClass_V08.60.05_V07.90.00">
			<EnumVal ord="0">operate-once</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_SwitchType_V08.60.05_V07.90.00">
			<EnumVal ord="1">Load Break</EnumVal>
			<EnumVal ord="2">Disconnector</EnumVal>
			<EnumVal ord="3">Earthing Switch</EnumVal>
			<EnumVal ord="4">High Speed Earthing Switch</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_Behavior_OnOff_V08.80.07_V07.90.00">
			<EnumVal ord="1">on</EnumVal>
			<EnumVal ord="5">off</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_DirectionGeneral_V08.80.07_V07.90.00">
			<EnumVal ord="0">unknown</EnumVal>
			<EnumVal ord="1">forward</EnumVal>
			<EnumVal ord="2">backward</EnumVal>
			<EnumVal ord="3">both</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_DirectionPhase_V08.80.07_V07.90.00">
			<EnumVal ord="0">unknown</EnumVal>
			<EnumVal ord="1">forward</EnumVal>
			<EnumVal ord="2">backward</EnumVal>
		</EnumType>
		<EnumType id="BehaviourModeKind" desc="Behaviour or mode (BehaviourModeKind enumeration)">
			<EnumVal ord="1" desc="Normal enabled state.">on</EnumVal>
			<EnumVal ord="2" desc="Process is passively supervised.">blocked</EnumVal>
			<EnumVal ord="3" desc="Function is operated but results are indicated as test results.">test</EnumVal>
			<EnumVal ord="4" desc="Function is operated in test mode, but with no impact to the process.">test/blocked</EnumVal>
			<EnumVal ord="5" desc="Function is inactive but shows its configuration capability.">off</EnumVal>
		</EnumType>
	</DataTypeTemplates>
</SCL>