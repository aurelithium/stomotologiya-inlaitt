@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ==========================================
echo   Сборка сайта стоматологии Инлайт
echo ==========================================
echo.
where node >nul 2>nul
if errorlevel 1 (
  echo ОШИБКА: Node.js не установлен.
  echo Установите Node.js 22 LTS с https://nodejs.org/
  pause
  exit /b 1
)
echo [1/2] Установка зависимостей...
call npm ci
if errorlevel 1 (
  echo.
  echo ОШИБКА при установке зависимостей.
  pause
  exit /b 1
)
echo.
echo [2/2] Сборка сайта...
call npm run build
if errorlevel 1 (
  echo.
  echo ОШИБКА при сборке сайта.
  pause
  exit /b 1
)
echo.
echo ГОТОВО! Готовый сайт находится в папке dist.
echo Откройте dist\index.html для проверки.
pause
