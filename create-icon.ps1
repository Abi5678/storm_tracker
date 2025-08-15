# PowerShell script to help create Windows icon file
# This script will guide you through creating the icon.ico file

Write-Host "Windows Icon Creation Helper" -ForegroundColor Green
Write-Host "============================" -ForegroundColor Green
Write-Host ""

# Check if icon.png exists
if (-not (Test-Path "assets\icon.png")) {
    Write-Host "❌ Error: assets\icon.png not found!" -ForegroundColor Red
    Write-Host "Please ensure the icon.png file exists in the assets folder." -ForegroundColor Yellow
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host "✓ Found assets\icon.png" -ForegroundColor Green
Write-Host ""

# Check if icon.ico already exists
if (Test-Path "assets\icon.ico") {
    Write-Host "⚠️  Warning: assets\icon.ico already exists!" -ForegroundColor Yellow
    $overwrite = Read-Host "Do you want to overwrite it? (y/n)"
    if ($overwrite -ne 'y' -and $overwrite -ne 'Y') {
        Write-Host "Icon creation cancelled." -ForegroundColor Cyan
        Read-Host "Press Enter to exit"
        exit 0
    }
}

Write-Host "To create a Windows icon file, you have several options:" -ForegroundColor Cyan
Write-Host ""

Write-Host "Option 1: Online Conversion (Recommended for most users)" -ForegroundColor Yellow
Write-Host "1. Open your web browser" -ForegroundColor White
Write-Host "2. Go to one of these online converters:" -ForegroundColor White
Write-Host "   - https://convertio.co/png-ico/" -ForegroundColor Cyan
Write-Host "   - https://www.icoconverter.com/" -ForegroundColor Cyan
Write-Host "   - https://cloudconvert.com/png-to-ico" -ForegroundColor Cyan
Write-Host "3. Upload the assets\icon.png file" -ForegroundColor White
Write-Host "4. Download the converted .ico file" -ForegroundColor White
Write-Host "5. Save it as 'icon.ico' in the assets folder" -ForegroundColor White
Write-Host ""

Write-Host "Option 2: Image Editing Software" -ForegroundColor Yellow
Write-Host "1. Open assets\icon.png in GIMP, Photoshop, or similar software" -ForegroundColor White
Write-Host "2. Export/Save as .ico format" -ForegroundColor White
Write-Host "3. Save as 'icon.ico' in the assets folder" -ForegroundColor White
Write-Host ""

Write-Host "Option 3: Command Line (if you have ImageMagick installed)" -ForegroundColor Yellow
Write-Host "1. Install ImageMagick from https://imagemagick.org/" -ForegroundColor White
Write-Host "2. Run this command in the project directory:" -ForegroundColor White
Write-Host "   magick assets\icon.png -define icon:auto-resize=256,128,64,48,32,16 assets\icon.ico" -ForegroundColor Cyan
Write-Host ""

Write-Host "Option 4: Manual Icon Creation" -ForegroundColor Yellow
Write-Host "1. Create a 256x256 pixel image with transparency" -ForegroundColor White
Write-Host "2. Include multiple sizes: 256x256, 128x128, 64x64, 48x48, 32x32, 16x16" -ForegroundColor White
Write-Host "3. Save as .ico format" -ForegroundColor White
Write-Host "4. Place in assets folder as 'icon.ico'" -ForegroundColor White
Write-Host ""

# Try to open the assets folder
$openFolder = Read-Host "Open the assets folder to see the icon.png file? (y/n)"
if ($openFolder -eq 'y' -or $openFolder -eq 'Y') {
    if (Test-Path "assets") {
        Invoke-Item "assets"
    }
}

Write-Host ""
Write-Host "After creating the icon.ico file:" -ForegroundColor Green
Write-Host "1. Ensure it's saved as 'assets\icon.ico'" -ForegroundColor White
Write-Host "2. Run the build script: .\build-windows.ps1" -ForegroundColor White
Write-Host "3. Or build manually: npm run win" -ForegroundColor White
Write-Host ""

Write-Host "Icon creation helper completed!" -ForegroundColor Green
Write-Host "Good luck with your Windows build! 🚀" -ForegroundColor Cyan
Read-Host "Press Enter to exit" 