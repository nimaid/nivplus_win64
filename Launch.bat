@echo off

set PORTABLE=0





set SCRIPT_DIR=%~dp0
set SCRIPT_DIR=%SCRIPT_DIR:~0,-1%

if "%PORTABLE%"=="1" (
    set DOSBOX_X_BIN=%SCRIPT_DIR%\bin\x64\Release\dosbox-x.exe
) else (
    set DOSBOX_X_BIN=C:\DOSBox-X\dosbox-x.exe
)

set CONF_FILE=%SCRIPT_DIR%\dosbox.conf
set MOUNT_DIR=%SCRIPT_DIR%



if "%PORTABLE%"=="1" (
    echo Using portable bin: "%DOSBOX_X_BIN%"
) else (
    echo Using installed bin: "%DOSBOX_X_BIN%"
)

echo Using conf file: "%CONF_FILE%"



"%DOSBOX_X_BIN%" -c "mount c '%MOUNT_DIR%'" -c "c:" -c "cd modules" -c "NOCTIS.EXE" -conf "%CONF_FILE%"
