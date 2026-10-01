@echo off
setlocal
cd /d "%~dp0bridge"
if not exist node_modules (
  echo Installing bridge dependency...
  npm install
  if errorlevel 1 pause & exit /b 1
)
if not exist config.json (
  echo.
  echo ERROR: bridge\config.json is missing.
  echo Copy config.example.json to config.json and fill in your site URL and bridge key.
  echo.
  pause
  exit /b 1
)
node bridge.mjs
pause
