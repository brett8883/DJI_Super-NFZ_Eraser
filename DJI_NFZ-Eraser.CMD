@echo off
setlocal
mode con: cols=92 lines=45
title DJI Super-NFZ Eraser
set NFZERASER="%cd%"
cd ProgramFiles
set pf="%cd%"
set header="%cd%\header.bat"
cd %NFZERASER%
cd tools
set tools="%cd%"
call %header%
echo Downloading the latest version of DUMLdore. Please Wait...
echo.
del /s DUMLdoreV3.exe 2>nul
busybox wget https://github.com/jezzab/DUMLdore/raw/master/DUMLdoreV3.exe
set dumldore="%cd%\dumldorev3.exe"
cls
call %header%
echo This tool will remove the GeoZones from the NFZ database that lives on DJI drones 
echo therefore erasing them completely. Only tested on Mavic Pro running stock 01.04.0300 
echo Or DJI_Super-Patcher patched firmware. 
echo -------------------------------------------------------------------------------------
pause 
cls
call %header%
echo **************************************************************************************
echo please turn on your aircraft and connect it to this computer
echo make sure it it fully started up before proceeding 
pause
cls
call %header%
echo Click the [Enable ADB] button in DUMLdore when it opens.
echo.
echo Wait a few seconds for ADB to enable, and then close DUMLdore
echo.
echo The program will continue automatically when DUMLdore is closed
call %dumldore%
cd %pf%
@echo on
adb shell mount -o remount,rw /amt
adb push nfz.db amt/nfz & adb push nfz.sig amt/nfz
adb shell mount -o remount,ro /amt
@echo off
Echo.
echo The NFZ database has been erased. Please Restart the aircraft
echo.
echo When connected to DJI Go 4 the FlySafe database version will be shown as version 00.00.01.04 in the about menu of DJI Go 4 settings
echo.
pause
cls
echo Thats it goodbye
pause
exit