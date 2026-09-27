import sys

path = r'E:\Creative Writing\NO OVERFLOW\Chapter 28.md'
with open(path, 'r', encoding='utf-8') as f:
    text = f.read()

# Fix the banned word
text = text.replace('A massive, synchronized Code Blue alarm', 'A deafening, synchronized Code Blue alarm')

# Fix the body bag parts
# We use replace with handling for both \n and \r\n to ensure it hits
def flex_replace(old_text, new_text, text):
    text = text.replace(old_text, new_text)
    text = text.replace(old_text.replace('\n', '\r\n'), new_text)
    return text

old1 = '''Iris pulled the heavy white hospital sheet up, dragging it over Elena's chest, over her face, until the woman was hidden. 

"I can't do this," Iris whispered to the sheet. 

"You can," Elena's muffled voice came from beneath the fabric. '''
new1 = '''Iris unrolled a white body bag across the mattress. The thick plastic was stamped with a yellow bio-hazard symbol. She pulled the heavy material over Elena's chest, over her face, and pulled the silver zipper shut until the woman was hidden. 

"I can't do this," Iris whispered to the bag. 

"You can," Elena's muffled voice came from beneath the plastic. '''
text = flex_replace(old1, new1, text)

old2 = '''The guard on the right held up a heavy, gloved hand, blocking her path. "Doctor, protocol requires visual confirmation of the—"

"Do not break the negative pressure seal!" Iris snapped, slamming the gurney into his armored chest to force him back. "This is a BSL-4 Airborne Infection Isolation protocol. The asset was in direct contact with an unknown pathogen from the Mnemosyne entity. If you lift that sheet in this hallway, you will contaminate this entire wing." She glared up at his faceless black visor, her chest heaving. "If you want to explain to Silas Blackwell why you forced the Company to incinerate this entire building, go ahead and lift it."

The guard froze. He stared at her yellow containment suit, the threat of an unknown biological agent outweighing his orders. He took a half-step back.'''
new2 = '''The guard on the right held up a heavy, gloved hand, blocking her path. "Doctor, protocol requires visual confirmation of the asset."

He reached out, his armored fingers catching the silver zipper of the body bag. He pulled it down an inch. The metal teeth parted.

"Do not break the negative pressure seal!" Iris snapped, slamming the gurney into his armored chest to force him back. "This is a BSL-4 Airborne Infection Isolation protocol. The asset was in direct contact with an unknown pathogen from the Mnemosyne entity. If you open that bag in this hallway, you will contaminate this entire wing." She glared up at his faceless black visor, her chest heaving. "If you want to explain to Silas Blackwell why you forced the Company to incinerate this entire building, go ahead and unzip it."

The guard froze. He stared at the yellow bio-hazard symbol, the threat of an unknown biological agent outweighing his orders. He took a half-step back.'''
text = flex_replace(old2, new2, text)

old3 = '''From beneath the sheet, Elena whispered, "Keep moving."  '''
new3 = '''From beneath the plastic, Elena whispered, "Keep moving."  '''
text = flex_replace(old3, new3, text)
text = flex_replace('From beneath the sheet, Elena whispered, "Keep moving."', 'From beneath the plastic, Elena whispered, "Keep moving."') # in case of trailing space loss

old4 = '''He looked down at the sheet, then up at Iris's yellow suit. "We are here for the Jane Doe."'''
new4 = '''He looked down at the white body bag, then up at Iris's yellow suit. "We are here for the Jane Doe."'''
text = flex_replace(old4, new4, text)

old5 = '''Beneath the thin white sheet, inches from the commandos' combat boots, Elena didn't breathe. '''
new5 = '''Beneath the thick white plastic, inches from the commandos' combat boots, Elena didn't breathe. '''
text = flex_replace(old5, new5, text)
text = flex_replace('''Beneath the thin white sheet, inches from the commandos' combat boots, Elena didn't breathe.''', '''Beneath the thick white plastic, inches from the commandos' combat boots, Elena didn't breathe.''')

old6 = '''"Leave the bed," Elena whispered from under the sheet, already throwing the fabric back. She slid off the mattress, landing unsteadily on her bare feet, clutching her ribs. "It's got patient tracking in it."'''
new6 = '''"Leave the bed," Elena whispered from inside the bag, already tearing the silver zipper open. She pushed the white plastic aside and slid off the mattress, landing unsteadily on her bare feet, clutching her ribs. "It's got patient tracking in it."'''
text = flex_replace(old6, new6, text)

with open(path, 'w', encoding='utf-8') as f:
    f.write(text)

print("Done replacing.")
