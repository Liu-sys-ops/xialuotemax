@echo off
chcp 65001 >nul
cd /d "%~dp0"

if not exist ".venv\Scripts\python.exe" (
  echo [ERROR] 还没有安装依赖。
  echo 请先双击 安装依赖.bat，完成后再运行本文件。
  pause
  exit /b 1
)

echo Starting Charlotte + AI Todo app...
echo Home: http://127.0.0.1:5000/
echo AI:   http://127.0.0.1:5000/app
echo Press Ctrl+C to stop.
echo.

start "" cmd /c "timeout /t 3 >nul & start http://127.0.0.1:5000/"
".venv\Scripts\python.exe" app.py
pause
