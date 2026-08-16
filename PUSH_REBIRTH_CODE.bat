@echo off
setlocal
cd /d "%~dp0"

echo ============================================
echo  ISLAS - Subir codigo de Rebirth a GitHub
echo ============================================
echo.

git --version >nul 2>&1
if errorlevel 1 (
  echo ERROR: Git no esta disponible.
  pause
  exit /b 1
)

echo [1/4] Actualizando el repositorio...
git pull --rebase --autostash origin main
if errorlevel 1 goto :error

echo [2/4] Preparando solo rebirth_inbox...
git add -- rebirth_inbox

git diff --cached --quiet
if not errorlevel 1 (
  echo.
  echo No hay codigo nuevo de Rebirth para subir.
  pause
  exit /b 0
)

for /f %%i in ('powershell -NoProfile -Command "Get-Date -Format yyyy-MM-dd_HHmmss"') do set TS=%%i

echo [3/4] Creando captura %TS%...
git commit -m "chore: capture Rebirth scripts %TS%"
if errorlevel 1 goto :error

echo [4/4] Subiendo a GitHub...
git push origin main
if errorlevel 1 goto :error

echo.
echo ============================================
echo  LISTO

echo  El codigo de Rebirth ya esta en GitHub.
echo  Dile a ChatGPT: "revisa la ultima captura de Rebirth".
echo ============================================
pause
exit /b 0

:error
echo.
echo ERROR: No se ha podido completar la subida.
echo No intentes arreglarlo a ciegas. Copia este error y pasaselo a ChatGPT.
pause
exit /b 1
