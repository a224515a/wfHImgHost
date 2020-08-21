@echo off&setlocal enabledelayedexpansion

REM 檔案清單
echo .
echo .
echo files in %cd% (%date% %time%)
dir /b /od *.* > file_list.md

set prefix= %cd%\

echo ================================================================
REM for /f "eol=* tokens=*" %%i in (file_list.md) do (
for /f  %%i in (file_list.md) do (
echo %prefix%%%i
echo %prefix%%%i>>ok.md
)

REM type file_list.md
echo ================================================================

echo finish
pause

