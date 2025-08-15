# Storm Tracker Desktop App - Windows Version

A powerful desktop application for tracking storm costs and management, built with Electron for Windows.

## 🚀 Quick Start

### Prerequisites

1. **Node.js** (version 16 or higher)
   - Download from [https://nodejs.org/](https://nodejs.org/)
   - Choose the LTS version for stability

2. **Git** (optional, for cloning the repository)
   - Download from [https://git-scm.com/](https://git-scm.com/)

### Installation

1. **Clone or download** the project
2. **Open Command Prompt or PowerShell** in the project directory
3. **Install dependencies:**
   ```bash
   npm install
   ```

### Running the App

```bash
npm start
```

## 🏗️ Building for Windows

### Option 1: Using Build Scripts (Recommended)

#### PowerShell Script (Recommended)
```powershell
# Build everything
.\build-windows.ps1

# Build only installer
.\build-windows.ps1 -BuildInstallerOnly

# Build only portable
.\build-windows.ps1 -BuildPortableOnly

# Skip icon check
.\build-windows.ps1 -SkipIconCheck

# Skip dependency installation
.\build-windows.ps1 -SkipDependencies
```

#### Batch File
```cmd
build-windows.bat
```

### Option 2: Manual Build Commands

```bash
# Build Windows installer (NSIS)
npm run win-installer

# Build Windows portable executable
npm run win-portable

# Build all Windows targets
npm run win
```

### Build Output

After successful build, you'll find the Windows applications in the `dist` folder:

- **`Advanced Storm Tracker Setup.exe`** - Windows installer
- **`Advanced Storm Tracker.exe`** - Portable executable

## 🎨 Windows Icon Setup

Before building, you need to create a Windows icon file:

1. **Convert the existing PNG icon:**
   - Use online converters like [Convertio](https://convertio.co/png-ico/) or [ICO Converter](https://www.icoconverter.com/)
   - Upload `assets/icon.png`
   - Download as `.ico` format
   - Save as `assets/icon.ico`

2. **Or use ImageMagick (if installed):**
   ```bash
   convert assets/icon.png -define icon:auto-resize=256,128,64,48,32,16 assets/icon.ico
   ```

## 📱 Application Features

### Core Functionality
- **Storm Cost Tracking** - Log and manage storm events
- **Labor Management** - Track worker hours and rates
- **Equipment Costs** - Monitor equipment usage and expenses
- **Product Inventory** - Track materials and supplies
- **Contractor Services** - Record external service costs

### User Interface
- **Modern Design** - Clean, responsive interface
- **Dark Mode Support** - Easy on the eyes
- **Responsive Layout** - Works on different screen sizes
- **Print Support** - Generate reports and save as PDF

### Data Management
- **Local Storage** - Data stored locally on your machine
- **Export/Import** - Backup and restore your data
- **Real-time Calculations** - Automatic cost calculations
- **Search and Filter** - Easy data navigation

## 🛠️ Development

### Project Structure
```
storm-tracker-desktop/
├── main.js              # Main Electron process
├── index.html           # Application interface
├── package.json         # Dependencies and build config
├── assets/              # Icons and resources
├── build-windows.ps1    # PowerShell build script
├── build-windows.bat    # Batch build script
└── dist/                # Built applications (after build)
```

### Key Technologies
- **Electron** - Cross-platform desktop framework
- **HTML/CSS/JavaScript** - Frontend interface
- **Chart.js** - Data visualization
- **Tailwind CSS** - Styling framework

## 🔧 Troubleshooting

### Common Issues

#### Build Fails
- **Check Node.js version** - Ensure you have Node.js 16+
- **Clear npm cache** - Run `npm cache clean --force`
- **Delete node_modules** - Remove and reinstall with `npm install`

#### Icon Issues
- **Missing icon.ico** - Create the Windows icon file first
- **Icon not showing** - Ensure the icon file is in the correct format

#### Runtime Errors
- **App won't start** - Check console for error messages
- **Missing dependencies** - Run `npm install` again

### Getting Help

1. **Check the console** for error messages
2. **Verify prerequisites** are installed correctly
3. **Review build logs** for specific error details
4. **Check file permissions** - ensure write access to project directory

## 📋 System Requirements

### Minimum Requirements
- **OS**: Windows 10 (64-bit) or later
- **RAM**: 4 GB
- **Storage**: 500 MB free space
- **Display**: 1024x768 resolution

### Recommended Requirements
- **OS**: Windows 11 (64-bit)
- **RAM**: 8 GB or more
- **Storage**: 1 GB free space
- **Display**: 1920x1080 or higher

## 🚀 Deployment

### Distribution Options

1. **Windows Installer (.exe)**
   - Professional installation experience
   - Creates Start Menu shortcuts
   - Easy uninstallation
   - Best for end users

2. **Portable Executable (.exe)**
   - No installation required
   - Can run from USB drives
   - Good for temporary use
   - Portable between computers

### Distribution Tips

- **Test thoroughly** on target Windows versions
- **Include documentation** for end users
- **Version your releases** for easy updates
- **Consider code signing** for enterprise use

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit pull requests or open issues for bugs and feature requests.

---

**Happy Storm Tracking!** 🌨️📊 