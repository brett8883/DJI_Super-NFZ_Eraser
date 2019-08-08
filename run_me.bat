@echo off
mode con: cols=92 lines=45
title DJI Super-NFZ Eraser
echo **************************************************************************************
echo 				  DJI Super NFZ Eraser
Echo 				by jezzab and Brett8883
echo **************************************************************************************
echo **************************************************************************************
echo This tool will remove the GeoZones from the NFZ database that lives on DJI drones 
echo therefore erasing them completely. Only tested on Mavic Pro running stock 01.04.0300 
echo Or DJI_Super-Patcher patched firmware. 
echo **************************************************************************************
pause 
cls
echo **************************************************************************************
echo 				  DJI Super NFZ Eraser
Echo 				by jezzab and Brett8883
echo **************************************************************************************
echo **************************************************************************************
echo please turn on your aircraft and connect it to this computer
echo make sure it it fully started up before proceeding 
pause
cls
echo **************************************************************************************
echo 				  DJI Super NFZ Eraser
Echo 				by jezzab and Brett8883
echo **************************************************************************************
echo **************************************************************************************
echo.
echo IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! 
echo Hold[alt] on keyboard +[click] on "Load Firmware" in DUMLdore V3.03
echo IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT!
echo.
echo and choose the file "erase_nfzdb_dji_system.bin"
echo.
echo It is vital that you hold [alt] when clicking "Load Firmware" in DUMLdore v3.03.
echo.
echo then click "flash" in DUML_for_nfz_removal_only only if you held the [ALT] key
echo When you clicked "Load Firmware" in DUMLdore V3.03
echo **************************************************************************************
echo Allow DUMLdore V3.03 to do its thing 
echo then when it is done and says it is ok to restart
echo close DUMLdore V3.03 and restart aircraft
echo when aircraft has full restarted and connected to this PC 
echo you may continue
cd tools
cd DUML_for_nfz_eraser_only
start DUMLdore_for_Super_NFZ_Eraser_only.exe
pause
cd ..
cd DUMLdoreV3.2
start DUMLdoreV3.exe
cd ..
cd ..
cd tools
cls
echo **************************************************************************************
echo 				  DJI Super NFZ Eraser
Echo 				by jezzab and Brett8883
echo **************************************************************************************
echo **************************************************************************************
echo click "enable ADB" in DUMLdore 3.2
echo when ADB has been enabled close DUMLdore and then continue
pause
cls
echo **************************************************************************************
echo 				  DJI Super NFZ Eraser
Echo 				by jezzab and Brett8883
echo **************************************************************************************
echo **************************************************************************************
@echo on
adb shell mount -o remount,rw /amt
adb pull /amt/nfz/nfz.db
adb shell mount -o remount,ro /amt
@echo off
title DJI Super-NFZ Eraser
ECHO DONE! Continue when ready
pause
echo **************************************************************************************
echo **************************************************************************************
echo **************************************************************************************
echo You can now turn off your aircraft...
echo **************************************************************************************
cd SQLiteDatabaseBrowserPortable
start SQLiteDatabaseBrowserPortable.exe
title DJI Super-NFZ Eraser
echo the nfz.db file from your aircraft has been copied to the 
echo 	nfz.db_verification folder in Super-DJI_NFZ_Eraser
echo **************************************************************************************
echo Use DB Browser for Sqlite to browse the nfz.db file in the nfz.db_verification folder 
echo 	there should be no database entries 
echo **************************************************************************************
echo Open the nfz.db file in DB Browser for Sqlite and then use the browse function 
echo 	to look through the data base. Dont worry if you cant find anything 
echo **************************************************************************************
echo 							YOU AREN'T SUPPOSE TO!
echo **************************************************************************************
echo Once you have confirmed there no database entries you 
echo 	know the process has been a success!
echo **************************************************************************************
Echo This is the end of DJI Super NFZ Eraser 
pause 
exit

