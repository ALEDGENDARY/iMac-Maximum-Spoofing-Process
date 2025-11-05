@echo off
title Apple Spoof Detection Tool
echo ===============================================
echo      APPLE SPOOF CONFIGURATION DETECTOR
echo ===============================================
echo.

echo [SYSTEM INFORMATION - Type 1]
echo -------------------------------
wmic computersystem get manufacturer,model,sku /value
wmic bios get serialnumber,version /value
wmic csproduct get name,uuid /value
echo.

echo [BASEBOARD/MOTHERBOARD - Type 2]
echo --------------------------------
wmic baseboard get manufacturer,product,version,serialnumber /value
echo.

echo [CHASSIS - Type 3]
echo ------------------
wmic systemenclosure get manufacturer,version,serialnumber /value
echo.

echo [PROCESSOR - Type 4]
echo --------------------
wmic cpu get manufacturer,name,processorid /value
echo.

echo [MEMORY - Type 6/17]
echo --------------------
wmic memorychip get manufacturer,partnumber,serialnumber /value
echo.

echo [DISK DRIVES - Type 10]
echo -----------------------
wmic diskdrive get model,serialnumber /value
echo.

echo [BIOS INFORMATION]
echo ------------------
wmic bios get manufacturer,serialnumber,version /value
echo.

echo ===============================================
echo        VERIFICATION AGAINST SPOOFED DATA
echo ===============================================
echo.

setlocal enabledelayedexpansion



echo ===============================================
pause