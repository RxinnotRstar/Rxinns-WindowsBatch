@echo off

title Shizukuをアクティベート by Rxinns
mode 49,20

if not exist adb.exe (
	echo 
	title あなたのADBはどこにありますか？
	color 4E
    echo  -----------------------------------------------
    echo               例外が検出されました!
    echo.
	echo              adb.exeが見つかりません
    echo  -----------------------------------------------
	echo.
	echo.
	echo このスクリプトを "ADB.exe"と一緒に置いて、
	echo もう一度実行してください。
	echo.
	echo デスクトップでスクリプトを実行する場合、
	echo スクリプトを右クリックし、「送る」、
	echo 「デスクトップショートカット」を選択します。
	echo.
	echo スクリプトはまもなく終了します。
	echo.
	pause
	exit
)

color 1E

echo.
echo  -----------------------------------------------
echo.
echo                    実行中……
echo.
echo     Androidデバイスでこのコンピュータに対して
echo              権限を許可してください。
echo.
echo  -----------------------------------------------
echo.

adb shell sh /storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh

echo.
if %errorlevel% equ 0 (
	cls
	title 成功しました
	color 2E
	echo.
	echo.
    echo  -----------------------------------------------
    echo.
	echo         アクティベーションに成功しました！
	echo.
	echo                 Shizukuを開いて、
	echo        実行中であることを確認してください。
	echo.
    echo  -----------------------------------------------
	echo.
	echo.
	echo ケーブルを抜いたときに
	echo アクティベーションが失敗する場合は
	echo 以下を確認してください。
	echo   1. 接続モードが「充電のみ」であるかどうか
	echo   2. USBホットスポットがオフになっているかどうか

	echo. 
	echo.
) else (
	title 異常が検出されました
	color 4E
    echo  -----------------------------------------------
    echo               異常が検出されました！
	echo            画面上のlogをお読みください。
    echo  -----------------------------------------------
)


echo  "adb.exe" のクリーンアップを準備中です。
pause

taskkill /f /im adb.exe & exit
