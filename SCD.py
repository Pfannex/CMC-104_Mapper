###############################################################################
#   SCD Import
###############################################################################
###############################################################################
#   IMPORT
###############################################################################
import helper as h
import math
from PySide6 import QtWidgets, QtCore
from PySide6.QtCore import Qt
from PySide6.QtWidgets import QMessageBox
import xml.etree.ElementTree as ET

###############################################################################
#   class CMEngine
###############################################################################

class SCD():
    def __init__(self,frm_main):   
        self.frm_main = frm_main
    def load_file(self):
        tree = ET.parse("CMC-104_Mapper/Datenmodel.scd")
        root = tree.getroot()
        self.frm_main.print_scd(root.tag)
        self.frm_main.print_scd(root.attrib)
        
        #root = ET.parse("CMC-104_Mapper/Datenmodel.scd").getroot()
        
        #ieds = root.findall("Communication")

        #or ied in ieds:
        #   print(ied.text)   
                 
        #for ied in root.findall("IED"):
        #   self.frm_main.print_scd(ied.find("name").text)
        
        
        #print(root.text)
        #for child in root:
         #   self.frm_main.print_scd(str(child.tag))
        
        #for IED in root.iter('IED'):
        #    print(IED.attrib)


        #for child in root:
        #    s = "{} - {}".format(child.tag, child.attrib)
        #    self.frm_main.print_scd(s)
        
        #print("type_tag")
        #for type_tag in root.findall('ied'):
        #    print("type_tag")
        #    value = type_tag.get('desc')
        #    self.frm_main.print_scd(value)

"""        #self.frm_main.print_scd("Hello World")
        parser = ET.XMLPullParser(['start', 'end'])
        parser.feed('<author> Ralls')
        list(parser.read_events())
        
        parser.feed(' </author>')
        for event, elem in parser.read_events():
            print(event)
            print(elem.tag, 'text=', elem.text)

"""
"""


def print_xml():
    for child in root:
        print(child.tag, child.attrib)
        
def parse_scd():
    print(ET.tostring(root, encoding='utf8').decode('utf8'))
    
    
    parser = ET.XMLPullParser(['start', 'end'])
    parser.feed('<author> Ralls')
    list(parser.read_events())
    
    parser.feed(' </author>')
    for event, elem in parser.read_events():
        print(event)
        print(elem.tag, 'text=', elem.text)
"""