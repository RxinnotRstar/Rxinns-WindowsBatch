@echo off

title Shizuku�򥢥��ƥ��٩`�� by Rxinns
mode 49,20

if not exist adb.exe (
	echo 
	title ���ʤ���ADB�Ϥɤ��ˤ���ޤ�����
	color 4E
    echo  -----------------------------------------------
    echo               ���⤬�ʳ�����ޤ���!
    echo.
	echo              adb.exe��Ҋ�Ĥ���ޤ���
    echo  -----------------------------------------------
	echo.
	echo.
	echo ���Υ�����ץȤ� "ADB.exe"��һ�w���ä��ơ�
	echo �⤦һ�Ȍg�Ф��Ƥ���������
	echo.
	echo �ǥ����ȥåפǥ�����ץȤ�g�Ф�����ϡ�
	echo ������ץȤ��ҥ���å��������ͤ롹��
	echo ���ǥ����ȥåץ���`�ȥ��åȡ����x�k���ޤ���
	echo.
	echo ������ץȤϤޤ�ʤ��K�ˤ��ޤ���
	echo.
	pause
	exit
)

color 1E

echo.
echo  -----------------------------------------------
echo.
echo                    �g���С���
echo.
echo     Android�ǥХ����Ǥ��Υ���ԥ�`���ˌ�����
echo              ���ޤ��S�ɤ��Ƥ���������
echo.
echo  -----------------------------------------------
echo.

adb shell sh /storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh

echo.
if %errorlevel% equ 0 (
	cls
	title �ɹ����ޤ���
	color 2E
	echo.
	echo.
    echo  -----------------------------------------------
    echo.
	echo         �����ƥ��٩`�����˳ɹ����ޤ�����
	echo.
	echo                 Shizuku���_���ơ�
	echo        �g���ФǤ��뤳�Ȥ�_�J���Ƥ���������
	echo.
    echo  -----------------------------------------------
	echo.
	echo.
	echo ���`�֥��i�����Ȥ���
	echo �����ƥ��٩`�����ʧ��������Ϥ�
	echo ���¤�_�J���Ƥ���������
	echo   1. �ӾA��`�ɤ�����늤Τߡ��Ǥ��뤫�ɤ���
	echo   2. USB�ۥåȥ��ݥåȤ����դˤʤäƤ��뤫�ɤ���

	echo. 
	echo.
) else (
	title �������ʳ�����ޤ���
	color 4E
    echo  -----------------------------------------------
    echo               �������ʳ�����ޤ�����
	echo            �����Ϥ�log���i�ߤ���������
    echo  -----------------------------------------------
)


echo  "adb.exe" �Υ���`�󥢥åפ�ʂ��ФǤ���
pause

taskkill /f /im adb.exe & exit
