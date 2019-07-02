@echo off
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
echo Hold[alt]+[click] on "load" in DUML_for_nfz_eraser_only.
echo **************************************************************************************
echo Choose the "erase_nfzdb_dji_system.bin" 
echo then click "flash" in DUML_for_nfz_removal_only
echo *******************************
echo Allow DUML_for_nfz_removal_only to do its thing 
echo then when it is done and says it is ok to restart
echo close DUML_for_nfz_removal_only and restart aircraft
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
cd nfz.db_verification
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
adb shell mount -o remount,rw /amt
adb pull /amt/nfz/nfz.db
adb shell mount -o remount,ro /amt
echo **************************************************************************************
echo You can now turn off your aircraft...
echo **************************************************************************************
cd ..
cd tools
cd SQLiteDatabaseBrowserPortable
start SQLiteDatabaseBrowserPortable.exe
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

