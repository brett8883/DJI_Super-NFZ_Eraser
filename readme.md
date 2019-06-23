***SUPER-NFZ REMOVER***
*Tool to replace NFZ database on Mavic Pro/MPP/MP Artic White running on a stock or DJI_Super-Patcher https://github.com/brett8883/DJI_Super-Patcher patched v01.04.0300 firmware.*

Super-NFZ Remover will replace the NFZ database that lives on the Mavic with an empty database effectively removing the NFZ database. 

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
To verify NFZ.db has been cleared you can make a folder somewhere on your computer and in a windows command line type
cd [**insert path to the folder you just made**]
With your rooted device connected to the PC, type the command 
adb pull /amt/nfz 
This will copy the NFZ folder from the Mavic into the folder you made. In it is the nfz.db which you can open in some DB browser like https://sqlitebrowser.org/
I did not create this hack. I believe it was @jezzab https://github.com/jezzab who created the hack so I take no credit for it. I just put it together into a single cohesive project and have written these instructions. 
This project is dependent on the DUMLdore project https://github.com/jezzab/DUMLdore made by @jezzab


