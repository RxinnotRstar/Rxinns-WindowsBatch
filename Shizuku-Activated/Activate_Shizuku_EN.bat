@echo off

title One-click activation script for Shizuku by Rxinns
mode 49,20

if not exist adb.exe (
	echo 
	title Rxinns ask you: Where's your ADB.EXE?
	color 4E
	echo.
    echo  -----------------------------------------------
    echo.
    echo       Exception detected! adb.exe not found
    echo.
    echo  -----------------------------------------------
	echo.
	echo.
	echo PUT THIS SCRIPT WITH "ADB.EXE" AND TRY AGAIN.
	echo.
	echo If you need to click the script on the desktop, 
	echo you can right-click on the script,
	echo and select "Send to", "Desktop Shortcut".
	echo.
	echo The script will exit soon.
	echo.
	pause
	exit /b
)

color 1E

echo.
echo  -----------------------------------------------
echo.
echo                    Running¡­¡­
echo.
echo  PLEASE AUTHORIZE THIS PC ON YOUR ANDROID DEVICE
echo.
echo  -----------------------------------------------
echo.

adb shell sh /storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh

echo.
if %errorlevel% equ 0 (
	cls
	title Shizuku activation succeeded
	color 2E
	echo.
	echo.
    echo  -----------------------------------------------
    echo                     ACTIVATED
	echo.
    echo    Please open Shizuku and check if activated.
    echo  -----------------------------------------------
	echo.
	echo.
	echo  If you encounter activation failure when 
	echo  unplugging the cable, check them:
	echo  1.Connection mode is "Charging only"
	echo  2.USB hotspot is turned off

	echo. 
	echo.
) else (
	title Exception detected
	color 4E
    echo  -----------------------------------------------
    echo                EXCEPTION DETECTED!
    echo.   
    echo         Please Check logs on your screen.
    echo  -----------------------------------------------
)


echo  Preparing to taskkill "adb.exe" 
pause

taskkill /f /im adb.exe & exit /b
