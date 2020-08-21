@echo off
set "q=!"
REM @echo off&setlocal enabledelayedexpansion

REM 檔案清單
echo .
echo .
echo files in %cd% (%date% %time%)
REM dir /b /od *.* >file_list.md

set path= %cd%\
set "prefix= https://cdn.jsdelivr.net/gh/a224515a/wfHImgHost/"
set "fname=file_list.md"

IF EXIST %fname%. (
        echo %fname% exist. Updating ...... && del %fname%.
    ) ELSE (
        echo %fname% inexist. Createing ...... 
    )
echo .
echo .
echo .	
echo ================================================================
REM for /f "eol=* tokens=*" %%i in (file_list.md) do (
for /f  %%i in (' dir /b /od') do (
echo %path%%%i
if not %%i == %fname% ( if not %%i == "listfile.bat" ( echo %q%[%%i]^(%prefix%%%i^) >> %fname%) )
)

REM type file_list.md
echo ================================================================

echo finish
pause
