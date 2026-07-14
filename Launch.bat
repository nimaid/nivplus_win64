@echo off

set SCRIPT_DIR=%~dp0
set SCRIPT_DIR=%SCRIPT_DIR:~0,-1%

set DBX_BIN_INSTALLED=C:\DOSBox-X\dosbox-x.exe
set DBX_BIN_PORTABLE=%SCRIPT_DIR%\bin\x64\Release\dosbox-x.exe

echo.
echo ^+------------------------------^+
echo ^| Noctis IV / IV Plus Launcher ^|
echo ^+------------------------------^+
echo.

if exist "%DBX_BIN_INSTALLED%" (
    echo DOSBox-X installation found!
    set PORTABLE=0
    set DOSBOX_X_BIN=%DBX_BIN_INSTALLED%
) else (
    echo DOSBox-X is not installed! Looking for portable version...
    if exist "%DBX_BIN_PORTABLE%" (
        echo Portable DOSBox-X found!
        set PORTABLE=1
        set DOSBOX_X_BIN=%DBX_BIN_PORTABLE%
    ) else (
        echo Could not find portable DOSBox-X!
        echo.
        echo ERROR: No DOSBox-X binary found! Unable to launch!
        echo Download DOSBox-X here: https://github.com/joncampbell123/dosbox-x/releases/latest
        echo.
        <nul set /p "=Press any key to exit . . . "
        pause >nul
        exit /b
    )
)

echo.

set CONF_FILE=%SCRIPT_DIR%\dosbox.conf
set MOUNT_DIR=%SCRIPT_DIR%

if "%PORTABLE%"=="1" (
    echo Using portable binary: "%DOSBOX_X_BIN%"
) else (
    echo Using installed binary: "%DOSBOX_X_BIN%"
)

echo Using conf file: "%CONF_FILE%"



"%DOSBOX_X_BIN%" -c "mount c '%MOUNT_DIR%'" -c "c:" -c "cd modules" -c "NOCTIS.EXE" -conf "%CONF_FILE%" -exit
