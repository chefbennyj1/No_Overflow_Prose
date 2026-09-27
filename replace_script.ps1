$path = "E:\Creative Writing\NO OVERFLOW\Chapter 28.md"
$content = Get-Content $path -Raw

$content = $content -replace 'A massive, synchronized Code Blue alarm', 'A deafening, synchronized Code Blue alarm'

# 1. Body bag
$old1 = "Iris pulled the heavy white hospital sheet up, dragging it over Elena's chest, over her face, until the woman was hidden. \r\n\r\n`"I can't do this,`" Iris whispered to the sheet. \r\n\r\n`"You can,`" Elena's muffled voice came from beneath the fabric. "
$new1 = "Iris unrolled a white body bag across the mattress. The thick plastic was stamped with a yellow bio-hazard symbol. She pulled the heavy material over Elena's chest, over her face, and pulled the silver zipper shut until the woman was hidden. `r`n`r`n`"I can't do this,`" Iris whispered to the bag. `r`n`r`n`"You can,`" Elena's muffled voice came from beneath the plastic. "
$content = $content.Replace($old1, $new1)

# try with just \n
$old1_n = "Iris pulled the heavy white hospital sheet up, dragging it over Elena's chest, over her face, until the woman was hidden. `n`n`"I can't do this,`" Iris whispered to the sheet. `n`n`"You can,`" Elena's muffled voice came from beneath the fabric. "
$new1_n = "Iris unrolled a white body bag across the mattress. The thick plastic was stamped with a yellow bio-hazard symbol. She pulled the heavy material over Elena's chest, over her face, and pulled the silver zipper shut until the woman was hidden. `n`n`"I can't do this,`" Iris whispered to the bag. `n`n`"You can,`" Elena's muffled voice came from beneath the plastic. "
$content = $content.Replace($old1_n, $new1_n)

# 2. Guard
$old2 = "The guard on the right held up a heavy, gloved hand, blocking her path. `"Doctor, protocol requires visual confirmation of the—`"`r`n`r`n`"Do not break the negative pressure seal!`" Iris snapped, slamming the gurney into his armored chest to force him back. `"This is a BSL-4 Airborne Infection Isolation protocol. The asset was in direct contact with an unknown pathogen from the Mnemosyne entity. If you lift that sheet in this hallway, you will contaminate this entire wing.`" She glared up at his faceless black visor, her chest heaving. `"If you want to explain to Silas Blackwell why you forced the Company to incinerate this entire building, go ahead and lift it.`"`r`n`r`nThe guard froze. He stared at her yellow containment suit, the threat of an unknown biological agent outweighing his orders. He took a half-step back."
$new2 = "The guard on the right held up a heavy, gloved hand, blocking her path. `"Doctor, protocol requires visual confirmation of the asset.`"`r`n`r`nHe reached out, his armored fingers catching the silver zipper of the body bag. He pulled it down an inch. The metal teeth parted.`r`n`r`n`"Do not break the negative pressure seal!`" Iris snapped, slamming the gurney into his armored chest to force him back. `"This is a BSL-4 Airborne Infection Isolation protocol. The asset was in direct contact with an unknown pathogen from the Mnemosyne entity. If you open that bag in this hallway, you will contaminate this entire wing.`" She glared up at his faceless black visor, her chest heaving. `"If you want to explain to Silas Blackwell why you forced the Company to incinerate this entire building, go ahead and unzip it.`"`r`n`r`nThe guard froze. He stared at the yellow bio-hazard symbol, the threat of an unknown biological agent outweighing his orders. He took a half-step back."
$content = $content.Replace($old2, $new2)

$old2_n = "The guard on the right held up a heavy, gloved hand, blocking her path. `"Doctor, protocol requires visual confirmation of the—`"`n`n`"Do not break the negative pressure seal!`" Iris snapped, slamming the gurney into his armored chest to force him back. `"This is a BSL-4 Airborne Infection Isolation protocol. The asset was in direct contact with an unknown pathogen from the Mnemosyne entity. If you lift that sheet in this hallway, you will contaminate this entire wing.`" She glared up at his faceless black visor, her chest heaving. `"If you want to explain to Silas Blackwell why you forced the Company to incinerate this entire building, go ahead and lift it.`"`n`nThe guard froze. He stared at her yellow containment suit, the threat of an unknown biological agent outweighing his orders. He took a half-step back."
$new2_n = "The guard on the right held up a heavy, gloved hand, blocking her path. `"Doctor, protocol requires visual confirmation of the asset.`"`n`nHe reached out, his armored fingers catching the silver zipper of the body bag. He pulled it down an inch. The metal teeth parted.`n`n`"Do not break the negative pressure seal!`" Iris snapped, slamming the gurney into his armored chest to force him back. `"This is a BSL-4 Airborne Infection Isolation protocol. The asset was in direct contact with an unknown pathogen from the Mnemosyne entity. If you open that bag in this hallway, you will contaminate this entire wing.`" She glared up at his faceless black visor, her chest heaving. `"If you want to explain to Silas Blackwell why you forced the Company to incinerate this entire building, go ahead and unzip it.`"`n`nThe guard froze. He stared at the yellow bio-hazard symbol, the threat of an unknown biological agent outweighing his orders. He took a half-step back."
$content = $content.Replace($old2_n, $new2_n)


# 3. moving
$old3 = 'From beneath the sheet, Elena whispered, "Keep moving."  '
$new3 = 'From beneath the plastic, Elena whispered, "Keep moving."  '
$content = $content.Replace($old3, $new3)
$content = $content.Replace('From beneath the sheet, Elena whispered, "Keep moving."', 'From beneath the plastic, Elena whispered, "Keep moving."')

# 4. Jane doe
$old4 = 'He looked down at the sheet, then up at Iris''s yellow suit. "We are here for the Jane Doe."'
$new4 = 'He looked down at the white body bag, then up at Iris''s yellow suit. "We are here for the Jane Doe."'
$content = $content.Replace($old4, $new4)

# 5. Boots
$old5 = "Beneath the thin white sheet, inches from the commandos' combat boots, Elena didn't breathe. "
$new5 = "Beneath the thick white plastic, inches from the commandos' combat boots, Elena didn't breathe. "
$content = $content.Replace($old5, $new5)
$content = $content.Replace("Beneath the thin white sheet, inches from the commandos' combat boots, Elena didn't breathe.", "Beneath the thick white plastic, inches from the commandos' combat boots, Elena didn't breathe.")


# 6. bed
$old6 = "`"Leave the bed,`" Elena whispered from under the sheet, already throwing the fabric back. She slid off the mattress, landing unsteadily on her bare feet, clutching her ribs. `"It's got patient tracking in it.`""
$new6 = "`"Leave the bed,`" Elena whispered from inside the bag, already tearing the silver zipper open. She pushed the white plastic aside and slid off the mattress, landing unsteadily on her bare feet, clutching her ribs. `"It's got patient tracking in it.`""
$content = $content.Replace($old6, $new6)

Set-Content -Path $path -Value $content -NoNewline
Write-Host "Done"
