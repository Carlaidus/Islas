@echo off
setlocal
cd /d "%~dp0"

echo ========================================
echo ISLAS - Rojo launcher
echo ========================================
echo.

powershell -NoProfile -Command "if (Get-NetTCPConnection -LocalPort 34873 -State Listen -ErrorAction SilentlyContinue) { exit 0 } else { exit 1 }"

if %ERRORLEVEL%==0 (
    echo Rojo ya esta funcionando en localhost:34873.
    echo Abre Roblox Studio y conecta el plugin Rojo a localhost:34873.
    echo.
    pause
    exit /b 0
)

echo Iniciando Rojo para Islas en localhost:34873...
echo No cierres esta ventana mientras trabajes con Rojo.
echo.
rojo serve --port 34873

if errorlevel 1 (
    echo.
    echo Rojo se ha cerrado con un error.
    pause
)
