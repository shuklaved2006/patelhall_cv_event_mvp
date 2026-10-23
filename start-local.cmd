@echo off
setlocal

rem Always run from this script's folder, even when launched from another directory.
cd /d "%~dp0"

if not exist "package.json" (
  echo Could not find package.json in:
  echo %CD%
  pause
  exit /b 1
)

if not exist "node_modules" (
  echo Installing dependencies...
  call npm ci
  if errorlevel 1 exit /b %errorlevel%
)

echo Starting Patel Hall Campus Edit at http://localhost:4175/
call npm run dev -- --host 127.0.0.1 --port 4175
