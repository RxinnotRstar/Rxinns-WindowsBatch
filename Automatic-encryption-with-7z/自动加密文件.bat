@echo off

rem ����������������������������������������������������

rem #####������ܽű� by Rxinns & ChatGPT-3.5#####

rem ����ű����Ե���7-zip�����ⵥ���ļ��򵥸��ļ���
rem ���ܴ��������Ϊ����������ɵ�64λ��Сд��ĸ+���֡�

rem ����������������������������������������������������

REM �޸��ն����
mode 49,15
title �Զ������ļ��ű������� 7-zip ��
setlocal enabledelayedexpansion

rem ����������������������������������������������������

REM ����������������������������
REM ��������·���������������
REM ����������������������������
set "zipProgram=C:\Program Files\7-Zip\7z.exe"

rem ����������������������������������������������������


rem ����������������������������������������������������

REM ����Ƿ���� 7-Zip ����
if not exist "%zipProgram%" (
    cls
    color 4E
    echo.
    echo  -----------------------------------------------
    echo   �����Ҳ��� 7-Zip ������ȷ����������ȷ��װ��
    echo   ���޸Ľű��еġ�zipProgram������ָ����ȷ·����
	echo     7-zip������ص�ַ��https://www.7-zip.org/
    echo  -----------------------------------------------
    echo.
    pause 
    goto :Error
)

rem ����������������������������������������������������

REM ��ʾ�û�����Ҫѹ�����ļ�·��
:fileinput
color 1E
cls
echo.
echo  -----------------------------------------------
echo                        ��ʾ
echo.
echo         ��֧�ֵ����ļ����ߵ����ļ��д���
echo.
echo            ��֧�ֶ���ļ�������ļ���
echo.
echo            �ļ����ᱣ�浽��ĵ�������
echo  -----------------------------------------------
echo.
set "filepath=���գ�"
set /p "filePath=������Ҫѹ�����ļ�/�ļ��е�·����֧���϶�����Ȼ�� Enter ��: "
set "filePath=%filePath:"=%"

rem ����������������������������������������������������

REM ����ļ����ļ����Ƿ����
if not exist "%filePath%" (
    cls
    color 4E
    echo.

    echo  -----------------------------------------------
    echo   �����Ҳ����ļ�/�ļ��С�����·���Ƿ�����
    echo  -----------------------------------------------
    echo.
    echo �������·��Ϊ��
    echo.
    echo "%filePath%"
    echo.
    pause 
    goto :fileinput
)

rem ����������������������������������������������������

REM �����������
setlocal EnableDelayedExpansion
set "chars=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
set "password="
for /L %%i in (1,1,64) do (
    set /a "rand=!random! %% 62"
    for /f %%j in ("!rand!") do (
        set "password=!password!!chars:~%%j,1!"
    )
)
endlocal & set "password=%password%"

rem ����������������������������������������������������

REM ��ȡԭ�ļ����ļ�������չ��
for %%F in ("%filePath%") do set "fileName=%%~nF"
for %%F in ("%filePath%") do set "extension=%%~xF"

rem ����������������������������������������������������

REM ��ϳ�ѹ�������ļ���
set "compressedFileName=!fileName!!extension!.7z"

rem ����������������������������������������������������

REM �����������λ��
for /f "tokens=2,*" %%i in ('reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Desktop"') do set "desktopdir=%%j"

rem ����������������������������������������������������

REM ѹ���ļ�
"%zipProgram%" a -mx0 -p%password% "%desktopdir%\!compressedFileName!" "%filePath%"

rem ����������������������������������������������������

REM ���ѹ���Ƿ�ɹ�
if %errorlevel% neq 0 (
    color 4E
    echo ѹ���ļ�ʱ��������
    goto :Error
)

rem ����������������������������������������������������

REM ��ʾ����
cls 
color 2E
echo.
echo                     ѹ���ɹ�
echo.
echo      �� �븴�����룬�رմ��ڽ��޷��һ����먈
echo      �� �븴�����룬�رմ��ڽ��޷��һ����먈
echo      �� �븴�����룬�رմ��ڽ��޷��һ����먈
echo  -----------------------------------------------
echo.
echo  %compressedFileName% �������ǣ�%password%
echo.
echo  -----------------------------------------------
echo.

rem ����������������������������������������������������

REM ������д���ļ���
:RenameForPassword
set /p "addPassword=���롰Y�����Խ�����д���ļ����� "
if /i "%addPassword%"=="y" (
    set "compressedFileNameWithPassword=!fileName!!extension!�����룺!password!��.7z"
    ren "%outputfolder%!compressedFileName!" "!compressedFileNameWithPassword!"
	cls
	echo  -----------------------------------------------
	echo.
	echo  "%compressedFileName%" �������ǣ�%password%
	echo.
	echo  -----------------------------------------------
	echo.
	echo      �ѳ��Խ�����д���ļ����������Ƿ�ɹ�
	echo.
	echo  -----------------------------------------------
	endlocal
) else (
	cls
	echo  -----------------------------------------------
	echo.
	echo  "%compressedFileName%" �������ǣ�%password%
	echo.
	echo  -----------------------------------------------
	echo.
	echo �������ݴ����粻��Ҫд�룬�ɹرմ���
	echo.
    goto :RenameForPassword
)

goto :End

rem ����������������������������������������������������

:Error
REM �����˳��ű�
endlocal
pause >nul

rem ����������������������������������������������������

:End
REM ���������ű�
endlocal
pause >nul
