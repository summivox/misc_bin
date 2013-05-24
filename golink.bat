@echo off
echo NOTE: Run with administer rights!
echo.

:: set this to whatever gdb throws at you (between `c:` and `\go`)
set FAKE_GOROOT="\Users\ADMINI~1\AppData\Local\Temp\2\bindist357622851"

c:
if not exist %FAKE_GOROOT% (
    mkdir %FAKE_GOROOT% > nul
)
cd %FAKE_GOROOT%
cd
mklink /J go %GOROOT%

if errorlevel 1 (
    echo fail: %ERRORLEVEL%
) else (
    echo success
)

pause
:eof
