@echo off
cd nfz_db
adb shell mount -o remount,rw /amt
adb pull /amt/nfz/nfz.db 
adb mount -o remount,ro /amt
Echo nfz.db has been downloaded from aircraft 
Echo and saved to nfz.db folder 
Echo you can now verify it is been emptied by 
Echo browsing the database with DB Browser
Echo ready to browse?
pause
start DB.Browser.for.SQLite-3.11.2-win64.msi
exit
