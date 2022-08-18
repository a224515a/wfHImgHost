@echo off
chcp 65001
set "q=!"
set path= %cd%\
set "prefix=https://cdn.jsdelivr.net/gh/a224515a/wfHImgHost/"
set "fname=file_list.md"

REM 檔案清單
echo .
echo .
echo files in %path% (%date% %time%)

IF EXIST %fname% (
        echo %fname% exist. Updating ...... && del %fname%
    ) ELSE (
        echo %fname% inexist. Createing ...... 
    )
echo .
echo .
echo ================================================================

for /f %%i in ('dir /b /o-d /a-s-d-h ^| c:\windows\system32\findstr /v /e ".bat .cmd .md"') do (
echo %q%[%%i]^(%prefix%%%i^) 1>> %fname%
)

type %fname%
echo ================================================================

echo finish
pause
