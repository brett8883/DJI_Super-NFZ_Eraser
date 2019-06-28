# ***SUPER-NFZ REMOVER***

*Tool to replace NFZ database on Mavic Pro/MPP/MP Artic White running a stock firmware version v01.04.0300 or a DJI_Super-Patcher https://github.com/brett8883/DJI_Super-Patcher patched firmware with an empty nfz database*

THERE MAY BE OTHER FIRMWARE VERSIONS OR OTHER AIRCRAFT THIS WILL WORK FOR BUT THESE ARE THE ONLY ONES I HAVE PERSONALLY TRIED IT ON. WILL UPDATE AS CONFIRMATION COMES IN OF COMPATIBILITY WITH OTHER FIRMWARE AND AIRCRAFT

Super-NFZ Remover will replace the NFZ database that lives on the Mavic with an empty database effectively removing the NFZ database. 

First let me say I didn't make this hack. This was made by jezzab https://github.com/jezzab 100%. I am just taking an old under appreciated mod out of the cellar dusting it off and giving it a new paint job... NOTHING MORE

BACKGROUND: On firmware version 01.04.0300 there is a anti-tamper mechanism that prevents flight of a Mavic if the NFZ.db has been removed. Instead, by replacing the nfz.db with an empty one we satisfy the requirement to have a nfz.db even though there are no entries no geozones in the database.

Step by step
1. Download full repository and keep  all files in original folders
2. Turn on Mavic and connect to PC 
3. Double click “DUML_for_nfz_removal_only.exe”
4. [alt] [click] on “load firmware” and choose “Clear_nfzdb_dji_system.bin”
5. Click “flash firmware” 
6. Allow it to do its thing which can take several minutes. 
7. Once flashing is complete restart Mavic and done!

VERIFICATION
To verify NFZ.db has been cleared you can reconnect your bird once it restarts and then open DULMdore 3.2 https://github.com/jezzab/DUMLdore/releases/download/v3.20/DUMLdoreV3.zip and click "Enable ADB." 

Close DULMdore once the "enable ADB" process is done and make a directory somewhere on your computer 

in a windows command line type

cd [**drag and drop the directory you made into cmd line**]

adb shell mount -o remount,rw /amt
adb pull /amt/nfz/nfz.db 
adb mount -o remount,ro /amt

This will copy the nfz.db from the Mavic into the folder you made.

You can then browse the db to ensure there are no entries in it with a DB browser like https://sqlitebrowser.org/dl/#windows

Again I did not create this it was jezzab https://github.com/jezzab who created this hack so I take no credit for it. I just put it together into a single cohesive project with directions. 

This project is dependent on the DUMLdore project https://github.com/jezzab/DUMLdore made by @jezzab


