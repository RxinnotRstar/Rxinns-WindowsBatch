@echo off

title 一键激活Shizuku脚本 by Rxinns
mode 49,20

if not exist adb.exe (
	echo 
	title Rxinns对你发出灵魂拷问：你的ADB呢？
	color 4E
    echo  -----------------------------------------------
    echo.
    echo             检测到异常！找不到adb.exe
    echo.
    echo  -----------------------------------------------
	echo.
	echo.
	echo 请将此脚本与“ADB.exe”放在一起，然后再运行一次。
	echo.
	echo 如果您需要在桌面运行脚本，可以右键点击脚本，
	echo 并选择“发送到”、“桌面快捷方式”。
	echo.
	echo 脚本即将退出。
	echo.
	pause
	exit /b /b
)

color 1E

echo.
echo  -----------------------------------------------
echo.
echo                    正在运行……
echo.
echo            请点击手机上的“确认”按钮
echo.
echo  -----------------------------------------------
echo.

adb shell sh /storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh

echo.
if %errorlevel% equ 0 (
	cls
	title Shizuku 激活成功
	color 2E
	echo.
	echo.
    echo  -----------------------------------------------
    echo.
	echo     激活成功！请打开Shizuku，核对是否正在运行
    echo.
    echo  -----------------------------------------------
	echo.
	echo.
	echo  如遇到拔线就掉激活的情况，可以检查以下内容：
	echo  1. 连接模式是否为“仅充电”
	echo  2. USB热点是否关闭

	echo. 
	echo.
) else (
	title 检测到异常
	color 4E
    echo  -----------------------------------------------
    echo.
    echo     检测到异常！请检查Shizuku是否激活成功   
    echo.
    echo  -----------------------------------------------
)


echo  准备清理残留的“adb.exe”程序
pause

taskkill /f /im adb.exe & exit /b