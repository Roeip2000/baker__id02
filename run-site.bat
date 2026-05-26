@echo off
setlocal

set "SITE_DIR=%~dp0"
if "%SITE_DIR:~-1%"=="\" set "SITE_DIR=%SITE_DIR:~0,-1%"

set "IIS=%ProgramFiles%\IIS Express\iisexpress.exe"
if not exist "%IIS%" set "IIS=%ProgramFiles(x86)%\IIS Express\iisexpress.exe"

if not exist "%IIS%" (
    echo IIS Express was not found on this computer.
    echo Open the project from Visual Studio, or install IIS Express.
    pause
    exit /b 1
)

powershell -NoProfile -ExecutionPolicy Bypass -Command "try { Invoke-WebRequest -UseBasicParsing -Uri 'http://localhost:50153/main.aspx' -TimeoutSec 3 | Out-Null; exit 0 } catch { exit 1 }"
if "%errorlevel%"=="0" (
    echo The site is already running.
    echo Opening the browser...
    start "" "http://localhost:50153/main.aspx"
    echo.
    pause
    exit /b 0
)

net session >nul 2>&1
if not "%errorlevel%"=="0" (
    echo This site needs administrator approval to keep the localhost port open.
    echo If Windows asks for permission, click Yes.
    echo.
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process -FilePath '%~f0' -Verb RunAs -Wait"
    echo.
    echo If the site did not open, run this file again and approve the administrator window.
    pause
    exit /b
)

echo Starting Ido Bakery site...
echo The browser will open at:
echo http://localhost:50153/main.aspx
echo.

start "IIS Express - Ido Bakery" "%IIS%" /path:"%SITE_DIR%" /port:50153 /clr:v4.0 /systray:false /trace:error

echo Waiting for the site to start...
powershell -NoProfile -ExecutionPolicy Bypass -Command "$ok = $false; for ($i = 0; $i -lt 20; $i++) { try { Invoke-WebRequest -UseBasicParsing -Uri 'http://localhost:50153/main.aspx' -TimeoutSec 2 | Out-Null; $ok = $true; break } catch { Start-Sleep -Seconds 1 } }; if ($ok) { exit 0 } else { exit 1 }"

if "%errorlevel%"=="0" (
    echo Site is running. Opening browser...
    start "" "http://localhost:50153/main.aspx"
) else (
    echo The site did not start.
    echo Check the IIS Express window for the error message.
)

echo.
echo Keep the IIS Express window open while using the site.
pause
