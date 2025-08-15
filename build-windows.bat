@echo off
echo Building Windows Storm Tracker Application...
echo.

REM Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Node.js is not installed or not in PATH
    echo Please install Node.js from https://nodejs.org/
    pause
    exit /b 1
)

REM Check if npm is installed
npm --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: npm is not installed or not in PATH
    echo Please install npm (usually comes with Node.js)
    pause
    exit /b 1
)

REM Check if icon.ico exists
if not exist "assets\icon.ico" (
    echo Warning: assets\icon.ico not found!
    echo Please create the Windows icon file first.
    echo See create-windows-icon.md for instructions.
    echo.
    echo Press any key to continue anyway...
    pause >nul
)

echo Installing dependencies...
call npm install
if %errorlevel% neq 0 (
    echo Error: Failed to install dependencies
    pause
    exit /b 1
)

echo.
echo Building Windows application...
echo.

REM Build Windows installer
echo Building Windows installer (NSIS)...
call npm run win-installer
if %errorlevel% neq 0 (
    echo Error: Failed to build Windows installer
    pause
    exit /b 1
)

REM Build Windows portable
echo Building Windows portable executable...
call npm run win-portable
if %errorlevel% neq 0 (
    echo Error: Failed to build Windows portable
    pause
    exit /b 1
)

echo.
echo Build completed successfully!
echo.
echo Output files are in the 'dist' folder:
echo - Windows Installer (.exe)
echo - Windows Portable (.exe)
echo.
echo Press any key to open the dist folder...
pause >nul

REM Open the dist folder
explorer "dist"

echo.
echo Build script completed.
pause 