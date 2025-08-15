# Windows Build Script for Storm Tracker Desktop App
# Run this script in PowerShell

param(
    [switch]$SkipIconCheck,
    [switch]$SkipDependencies,
    [switch]$BuildInstallerOnly,
    [switch]$BuildPortableOnly
)

Write-Host "Building Windows Storm Tracker Application..." -ForegroundColor Green
Write-Host ""

# Check if Node.js is installed
try {
    $nodeVersion = node --version 2>$null
    if ($LASTEXITCODE -ne 0) {
        throw "Node.js not found"
    }
    Write-Host "✓ Node.js version: $nodeVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Error: Node.js is not installed or not in PATH" -ForegroundColor Red
    Write-Host "Please install Node.js from https://nodejs.org/" -ForegroundColor Yellow
    Read-Host "Press Enter to exit"
    exit 1
}

# Check if npm is installed
try {
    $npmVersion = npm --version 2>$null
    if ($LASTEXITCODE -ne 0) {
        throw "npm not found"
    }
    Write-Host "✓ npm version: $npmVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Error: npm is not installed or not in PATH" -ForegroundColor Red
    Write-Host "Please install npm (usually comes with Node.js)" -ForegroundColor Yellow
    Read-Host "Press Enter to exit"
    exit 1
}

# Check if icon.ico exists
if (-not $SkipIconCheck) {
    if (-not (Test-Path "assets\icon.ico")) {
        Write-Host "⚠️  Warning: assets\icon.ico not found!" -ForegroundColor Yellow
        Write-Host "Please create the Windows icon file first." -ForegroundColor Yellow
        Write-Host "See create-windows-icon.md for instructions." -ForegroundColor Cyan
        Write-Host ""
        $continue = Read-Host "Press Enter to continue anyway, or 'n' to exit"
        if ($continue -eq 'n') {
            exit 1
        }
    } else {
        Write-Host "✓ Windows icon found" -ForegroundColor Green
    }
}

# Install dependencies
if (-not $SkipDependencies) {
    Write-Host ""
    Write-Host "Installing dependencies..." -ForegroundColor Cyan
    npm install
    if ($LASTEXITCODE -ne 0) {
        Write-Host "❌ Error: Failed to install dependencies" -ForegroundColor Red
        Read-Host "Press Enter to exit"
        exit 1
    }
    Write-Host "✓ Dependencies installed successfully" -ForegroundColor Green
}

Write-Host ""
Write-Host "Building Windows application..." -ForegroundColor Cyan
Write-Host ""

# Build based on parameters
$buildSuccess = $true

if (-not $BuildPortableOnly) {
    Write-Host "Building Windows installer (NSIS)..." -ForegroundColor Yellow
    npm run win-installer
    if ($LASTEXITCODE -ne 0) {
        Write-Host "❌ Error: Failed to build Windows installer" -ForegroundColor Red
        $buildSuccess = $false
    } else {
        Write-Host "✓ Windows installer built successfully" -ForegroundColor Green
    }
}

if (-not $BuildInstallerOnly) {
    Write-Host "Building Windows portable executable..." -ForegroundColor Yellow
    npm run win-portable
    if ($LASTEXITCODE -ne 0) {
        Write-Host "❌ Error: Failed to build Windows portable" -ForegroundColor Red
        $buildSuccess = $false
    } else {
        Write-Host "✓ Windows portable built successfully" -ForegroundColor Green
    }
}

if ($buildSuccess) {
    Write-Host ""
    Write-Host "🎉 Build completed successfully!" -ForegroundColor Green
    Write-Host ""
    Write-Host "Output files are in the 'dist' folder:" -ForegroundColor Cyan
    Write-Host "  - Windows Installer (.exe)" -ForegroundColor White
    Write-Host "  - Windows Portable (.exe)" -ForegroundColor White
    Write-Host ""
    
    $openFolder = Read-Host "Open the dist folder? (y/n)"
    if ($openFolder -eq 'y' -or $openFolder -eq 'Y') {
        if (Test-Path "dist") {
            Invoke-Item "dist"
        }
    }
} else {
    Write-Host ""
    Write-Host "❌ Build completed with errors" -ForegroundColor Red
    Write-Host "Please check the error messages above" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Build script completed." -ForegroundColor Cyan
Read-Host "Press Enter to exit" 