@echo off

title һ������Shizuku�ű� by Rxinns
mode 49,20

if not exist adb.exe (
	echo 
	title Rxinns���㷢����꿽�ʣ����ADB�أ�
	color 4E
    echo  -----------------------------------------------
    echo.
    echo             ��⵽�쳣���Ҳ���adb.exe
    echo.
    echo  -----------------------------------------------
	echo.
	echo.
	echo �뽫�˽ű��롰ADB.exe������һ��Ȼ��������һ�Ρ�
	echo.
	echo �������Ҫ���������нű��������Ҽ�����ű���
	echo ��ѡ�񡰷��͵������������ݷ�ʽ����
	echo.
	echo �ű������˳���
	echo.
	pause
	exit /b /b
)

color 1E

echo.
echo  -----------------------------------------------
echo.
echo                    �������С���
echo.
echo            �����ֻ��ϵġ�ȷ�ϡ���ť
echo.
echo  -----------------------------------------------
echo.

adb shell sh /storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh

echo.
if %errorlevel% equ 0 (
	cls
	title Shizuku ����ɹ�
	color 2E
	echo.
	echo.
    echo  -----------------------------------------------
    echo.
	echo     ����ɹ������Shizuku���˶��Ƿ���������
    echo.
    echo  -----------------------------------------------
	echo.
	echo.
	echo  ���������߾͵��������������Լ���������ݣ�
	echo  1. ����ģʽ�Ƿ�Ϊ������硱
	echo  2. USB�ȵ��Ƿ�ر�

	echo. 
	echo.
) else (
	title ��⵽�쳣
	color 4E
    echo  -----------------------------------------------
    echo.
    echo     ��⵽�쳣������Shizuku�Ƿ񼤻�ɹ�   
    echo.
    echo  -----------------------------------------------
)


echo  ׼����������ġ�adb.exe������
pause

taskkill /f /im adb.exe & exit /b