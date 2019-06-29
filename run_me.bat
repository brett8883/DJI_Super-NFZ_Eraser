@echo off 
echo DJI Super NFZ Eraser
echo ***********************
echo This tool will remove the GeoZones from the 
echo NFZ database that lives on DJI drones 
echo therefore disabling them
echo ***********************
pause 
echo please turn on your aircraft and connect it to this computer
echo make sure it it fully started up before proceeding 
pause
cd DUML_for_nfz_removal_only
start DUML_for_nfz_removal_only.exe
echo hold the alt key on your keyboard and then click "load" in DUML_for_nfz_removal_only.
echo Choose the "Clear_nfzdb_dji_system.bin" 
echo from the DJI_Super_NFZ_Eraser folder
echo then click "flash" in DUML_for_nfz_removal_only
echo *******************************
echo Allow DUML_for_nfz_removal_only to do its thing 
echo then when it is done and says it is ok to restart
echo close DUML_for_nfz_removal_only and restart aircraft
echo when aircraft has full restarted and connected to this PC 
echo you may continue
pause
cd DUMLdoreV3
start DUMLdoreV3.exe
cd nfz.db_verification
echo click "enable ADB" in DUMLdore 3.2
echo when ADB has been enabled close DUMLdore and then continue
pause
adb shell mount -o remount,rw /amt
adb pull /amt/nfz/nfz.db
adb mount -o remount,ro /amt
cd DB Browser for SQLite
start DB Browser for SQLite.exe
echo You can now turn off your aircraft...
echo ***********************************
echo the nfz.db file from your aircraft has been copied to the 
echo nfz.db_verification folder inside
echo Super-DJI_NFZ_Eraser-master folder.
echo ***********************************
echo Use DB Browser for Sqlite to browse the nfz.db file 
echo in the nfz.db_verification folder
echo there should be no database entries 
echo ************************************
echo Once you have confirmed there no database entries you 
echo know the process has been a success!
pause

