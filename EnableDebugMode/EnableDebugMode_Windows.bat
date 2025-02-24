@echo off
echo Enabling Debug Mode for Adobe CEP Extensions (CSXS.9 to CSXS.12)...

REM Check for admin rights (needed for registry edits)
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo This script requires Administrator privileges.
    echo Right-click and select "Run as Administrator".
    pause
    exit /b 1
)

REM Set PlayerDebugMode for CSXS.9
reg query "HKEY_CURRENT_USER\Software\Adobe\CSXS.9" >nul 2>&1
if %errorLevel% neq 0 (
    reg add "HKEY_CURRENT_USER\Software\Adobe\CSXS.9" /f >nul 2>&1
)
reg add "HKEY_CURRENT_USER\Software\Adobe\CSXS.9" /v PlayerDebugMode /t REG_SZ /d 1 /f >nul 2>&1
echo CSXS.9 set to Debug Mode.

REM Set PlayerDebugMode for CSXS.10
reg query "HKEY_CURRENT_USER\Software\Adobe\CSXS.10" >nul 2>&1
if %errorLevel% neq 0 (
    reg add "HKEY_CURRENT_USER\Software\Adobe\CSXS.10" /f >nul 2>&1
)
reg add "HKEY_CURRENT_USER\Software\Adobe\CSXS.10" /v PlayerDebugMode /t REG_SZ /d 1 /f >nul 2>&1
echo CSXS.10 set to Debug Mode.

REM Set PlayerDebugMode for CSXS.11
reg query "HKEY_CURRENT_USER\Software\Adobe\CSXS.11" >nul 2>&1
if %errorLevel% neq 0 (
    reg add "HKEY_CURRENT_USER\Software\Adobe\CSXS.11" /f >nul 2>&1
)
reg add "HKEY_CURRENT_USER\Software\Adobe\CSXS.11" /v PlayerDebugMode /t REG_SZ /d 1 /f >nul 2>&1
echo CSXS.11 set to Debug Mode.

REM Set PlayerDebugMode for CSXS.12
reg query "HKEY_CURRENT_USER\Software\Adobe\CSXS.12" >nul 2>&1
if %errorLevel% neq 0 (
    reg add "HKEY_CURRENT_USER\Software\Adobe\CSXS.12" /f >nul 2>&1
)
reg add "HKEY_CURRENT_USER\Software\Adobe\CSXS.12" /v PlayerDebugMode /t REG_SZ /d 1 /f >nul 2>&1
echo CSXS.12 set to Debug Mode.

echo Debug Mode enabled for all versions!
echo Restart Premiere Pro to apply changes.
pause
