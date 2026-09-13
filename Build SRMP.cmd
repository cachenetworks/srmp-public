@echo off
setlocal
cd /d "%~dp0"

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\Build-SRMP.ps1" -Package %*
set "EXITCODE=%ERRORLEVEL%"

echo.
if not "%EXITCODE%"=="0" (
    echo SRMP build failed with exit code %EXITCODE%.
) else (
    echo SRMP build and package completed successfully.
)
pause
exit /b %EXITCODE%
