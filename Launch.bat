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

echo.
echo +-------------------------+
echo ^| Noctis IV Plus Launcher ^|
echo +-------------------------+
echo.

if "%PORTABLE%"=="1" (
    echo Using portable binary: "%DOSBOX_X_BIN%"
) else (
    echo Using installed binary: "%DOSBOX_X_BIN%"
)

if not exist "%DOSBOX_X_BIN%" (
    echo.
    echo DOSBox-X binary is not installed!
    echo Download DOSBox-X here: https://github.com/joncampbell123/dosbox-x/releases/latest
    echo.
    <nul set /p "=Press any key to exit . . . "
    pause >nul
    exit /b
)

echo Using conf file: "%CONF_FILE%"



"%DOSBOX_X_BIN%" -c "mount c '%MOUNT_DIR%'" -c "c:" -c "cd modules" -c "NOCTIS.EXE" -conf "%CONF_FILE%" -exit
