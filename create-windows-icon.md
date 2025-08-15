# Creating Windows Icon for Storm Tracker

To create a Windows icon file (.ico) for the Storm Tracker application, follow these steps:

## Option 1: Convert Existing PNG (Recommended)

1. **Use the existing icon.png file** in the assets folder
2. **Convert to ICO format** using one of these methods:

### Method A: Online Converter
- Go to https://convertio.co/png-ico/ or https://www.icoconverter.com/
- Upload the `assets/icon.png` file
- Download the converted `.ico` file
- Save it as `assets/icon.ico`

### Method B: Image Editing Software
- Open `assets/icon.png` in GIMP, Photoshop, or similar software
- Export/Save as `.ico` format
- Save as `assets/icon.ico`

### Method C: Command Line (if you have ImageMagick)
```bash
convert assets/icon.png -define icon:auto-resize=256,128,64,48,32,16 assets/icon.ico
```

## Option 2: Create New Icon

If you want to create a new icon specifically for Windows:

1. **Design a 256x256 pixel icon** with transparency
2. **Include multiple sizes**: 256x256, 128x128, 64x64, 48x48, 32x32, 16x16
3. **Save as .ico format**
4. **Place in assets folder** as `icon.ico`

## Icon Requirements

- **Format**: ICO (Windows Icon)
- **Sizes**: Multiple resolutions (16x16 to 256x256)
- **Transparency**: Support for alpha channel
- **Location**: `assets/icon.ico`

## After Creating the Icon

Once you have the `icon.ico` file in the `assets` folder, you can build the Windows application:

```bash
# Build Windows installer
npm run win-installer

# Build Windows portable executable
npm run win-portable

# Build all Windows targets
npm run win
```

The built Windows applications will be available in the `dist` folder. 