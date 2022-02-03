import xml.etree.ElementTree as ET
root = ET.parse('CMC-104_Mapper/Datenmodel.scd').getroot()

def print_xml():
    for child in root:
        print(child.tag, child.attrib)
        
def parse_scd():
    print(ET.tostring(root, encoding='utf8').decode('utf8'))
    
    
"""
    parser = ET.XMLPullParser(['start', 'end'])
    parser.feed('<author> Ralls')
    list(parser.read_events())
    
    parser.feed(' </author>')
    for event, elem in parser.read_events():
        print(event)
        print(elem.tag, 'text=', elem.text)
"""