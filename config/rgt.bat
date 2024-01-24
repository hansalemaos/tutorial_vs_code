@echo off
setlocal enabledelayedexpansion

rem Get the current date and time
set "timestamp=%date:~4,2%%date:~7,2%%date:~10,4%_%time:~0,2%%time:~3,2%%time:~6,2%"
set "tempFile=%TEMP%\results_!timestamp!.txt"

rem Set default values for optional arguments

rem Check if -C argument is provided
if "%2"=="" (
    set "context=1"
) else (
    set "context=%2"
)

rem Check if --max-depth argument is provided
if "%3"=="" (
    set "maxDepth=100"
) else (
    set "maxDepth=%3"
)

call rg --regexp '%1' -i -S -U -L -C !context! --vimgrep --with-filename --pretty --no-messages --max-depth !maxDepth! > "!tempFile!"

call type "!tempFile!"
echo Results: !tempFile!

endlocal
