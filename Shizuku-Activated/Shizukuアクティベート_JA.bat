@echo off

title Shizukuをアクティベ�`ト by Rxinns
mode 49,20

if not exist adb.exe (
	echo 
	title あなたのADBはどこにありますか��
	color 4E
    echo  -----------------------------------------------
    echo               箭翌が�奮�されました!
    echo.
	echo              adb.exeが��つかりません
    echo  -----------------------------------------------
	echo.
	echo.
	echo このスクリプトを "ADB.exe"と匯�wに崔いて、
	echo もう匯業�g佩してください。
	echo.
	echo デスクトップでスクリプトを�g佩する��栽、
	echo スクリプトを嘔クリックし、仝僕る々、
	echo 仝デスクトップショ�`トカット々を�x�kします。
	echo.
	echo スクリプトはまもなく�K阻します。
	echo.
	pause
	exit
)

color 1E

echo.
echo  -----------------------------------------------
echo.
echo                    �g佩嶄´´
echo.
echo     Androidデバイスでこのコンピュ�`タに��して
echo              �慙泙鰓S辛してください。
echo.
echo  -----------------------------------------------
echo.

adb shell sh /storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh

echo.
if %errorlevel% equ 0 (
	cls
	title 撹孔しました
	color 2E
	echo.
	echo.
    echo  -----------------------------------------------
    echo.
	echo         アクティベ�`ションに撹孔しました��
	echo.
	echo                 Shizukuを�_いて、
	echo        �g佩嶄であることを�_�Jしてください。
	echo.
    echo  -----------------------------------------------
	echo.
	echo.
	echo ケ�`ブルを�iいたときに
	echo アクティベ�`ションが払�，垢���栽は
	echo 參和を�_�Jしてください。
	echo   1. 俊�Aモ�`ドが仝割��のみ々であるかどうか
	echo   2. USBホットスポットがオフになっているかどうか

	echo. 
	echo.
) else (
	title ��械が�奮�されました
	color 4E
    echo  -----------------------------------------------
    echo               ��械が�奮�されました��
	echo            鮫中貧のlogをお�iみください。
    echo  -----------------------------------------------
)


echo  "adb.exe" のクリ�`ンアップを���籌个任后�
pause

taskkill /f /im adb.exe & exit
