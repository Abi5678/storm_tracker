# Windows Deployment Guide

Complete guide for building, testing, and distributing the Storm Tracker Desktop application for Windows.

## 🎯 Overview

This guide covers the complete process of creating a Windows desktop application from the Storm Tracker project, including:

- Environment setup
- Building the application
- Testing and quality assurance
- Distribution and deployment
- Troubleshooting common issues

## 🛠️ Environment Setup

### Required Software

1. **Node.js** (v16.0.0 or higher)
   ```bash
   # Verify installation
   node --version
   npm --version
   ```

2. **Git** (for version control)
   ```bash
   # Verify installation
   git --version
   ```

3. **Windows Build Tools** (if building from source)
   ```bash
   # Install Windows Build Tools
   npm install --global --production windows-build-tools
   ```

### Project Setup

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd storm-tracker-desktop
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Verify setup**
   ```bash
   npm start
   ```

## 🏗️ Building the Application

### Step 1: Create Windows Icon

Before building, you must create a Windows icon file:

```bash
# Run the icon creation helper
.\create-icon.ps1
```

**Manual Icon Creation:**
1. Convert `assets/icon.png` to `assets/icon.ico`
2. Use online converters or image editing software
3. Ensure the icon includes multiple sizes (16x16 to 256x256)

### Step 2: Build Commands

#### Using Build Scripts (Recommended)

**PowerShell (Recommended):**
```powershell
# Build everything
.\build-windows.ps1

# Build only installer
.\build-windows.ps1 -BuildInstallerOnly

# Build only portable
.\build-windows.ps1 -BuildPortableOnly
```

**Batch File:**
```cmd
build-windows.bat
```

#### Manual Build Commands

```bash
# Build Windows installer (NSIS)
npm run win-installer

# Build Windows portable executable
npm run win-portable

# Build all Windows targets
npm run win
```

### Step 3: Build Output

After successful build, check the `dist` folder:

```
dist/
├── win-unpacked/                    # Unpacked application
├── Advanced Storm Tracker.exe       # Portable executable
└── Advanced Storm Tracker Setup.exe # Windows installer
```

## 🧪 Testing and Quality Assurance

### Pre-Build Testing

1. **Development Testing**
   ```bash
   npm start
   ```
   - Test all application features
   - Verify data persistence
   - Check UI responsiveness
   - Test print functionality

2. **Code Quality**
   - No console errors
   - All features working correctly
   - Data validation working
   - Error handling in place

### Post-Build Testing

1. **Installation Testing**
   - Test installer on clean Windows VM
   - Verify Start Menu shortcuts
   - Check desktop shortcut creation
   - Test uninstallation process

2. **Runtime Testing**
   - Launch application from Start Menu
   - Test all functionality
   - Verify data persistence
   - Check file associations

3. **Portable Testing**
   - Run portable executable
   - Test on different Windows versions
   - Verify no installation required
   - Check USB drive compatibility

### Testing Checklist

- [ ] Application launches without errors
- [ ] All features work correctly
- [ ] Data saves and loads properly
- [ ] UI is responsive and usable
- [ ] Print functionality works
- [ ] No console errors
- [ ] Application closes cleanly
- [ ] Installer/uninstaller works
- [ ] Portable version runs independently

## 🚀 Distribution and Deployment

### Distribution Options

#### 1. Windows Installer (.exe)
**Best for:** End users, enterprise deployment
**Features:**
- Professional installation experience
- Creates Start Menu shortcuts
- Easy uninstallation
- Windows integration

#### 2. Portable Executable (.exe)
**Best for:** Temporary use, USB drives, no admin rights
**Features:**
- No installation required
- Portable between computers
- Good for temporary deployments

### Distribution Methods

#### Direct Distribution
- Share executable files directly
- Upload to file sharing services
- Distribute via USB drives

#### Web Distribution
- Host on company website
- Use file hosting services
- GitHub Releases

#### Enterprise Deployment
- Group Policy deployment
- SCCM/Intune deployment
- Network share distribution

### Distribution Checklist

- [ ] Application is thoroughly tested
- [ ] All dependencies included
- [ ] Documentation provided
- [ ] Version information clear
- [ ] License information included
- [ ] Support contact provided

## 🔧 Troubleshooting

### Common Build Issues

#### Icon Problems
```bash
# Error: Icon file not found
# Solution: Create assets/icon.ico file
.\create-icon.ps1
```

#### Dependency Issues
```bash
# Error: Build tools not found
# Solution: Install Windows Build Tools
npm install --global --production windows-build-tools

# Error: Node modules corrupted
# Solution: Clean and reinstall
rm -rf node_modules package-lock.json
npm install
```

#### Build Failures
```bash
# Error: Electron download failed
# Solution: Check internet connection, clear cache
npm cache clean --force

# Error: Permission denied
# Solution: Run as Administrator or check file permissions
```

### Common Runtime Issues

#### Application Won't Start
- Check Windows Event Viewer for errors
- Verify .NET Framework is installed
- Check antivirus software interference
- Run as Administrator

#### Performance Issues
- Check available system resources
- Close unnecessary applications
- Verify sufficient disk space
- Check for Windows updates

#### Data Loss Issues
- Verify application has write permissions
- Check disk space availability
- Verify no antivirus interference
- Check for file corruption

## 📋 System Requirements

### Minimum Requirements
- **OS:** Windows 10 (64-bit) or later
- **RAM:** 4 GB
- **Storage:** 500 MB free space
- **Display:** 1024x768 resolution
- **.NET Framework:** 4.7.2 or later

### Recommended Requirements
- **OS:** Windows 11 (64-bit)
- **RAM:** 8 GB or more
- **Storage:** 1 GB free space
- **Display:** 1920x1080 or higher
- **.NET Framework:** Latest version

## 🔒 Security Considerations

### Code Signing
- Consider code signing for enterprise use
- Prevents Windows SmartScreen warnings
- Increases user trust
- Required for some enterprise environments

### Antivirus Compatibility
- Test with common antivirus software
- Submit false positives for review
- Include application in whitelists
- Provide clear application purpose

### Data Security
- Data stored locally by default
- No network transmission of sensitive data
- Consider encryption for sensitive information
- Implement proper access controls

## 📊 Performance Optimization

### Build Optimization
- Use production builds
- Minimize bundle size
- Optimize images and assets
- Remove development dependencies

### Runtime Optimization
- Lazy load components
- Optimize database queries
- Implement caching strategies
- Monitor memory usage

## 🔄 Updates and Maintenance

### Version Management
- Use semantic versioning
- Maintain changelog
- Provide migration guides
- Support multiple versions

### Update Distribution
- Automatic update checks
- Manual download options
- Enterprise deployment tools
- Rollback capabilities

### Maintenance Tasks
- Regular dependency updates
- Security patch application
- Performance monitoring
- User feedback collection

## 📚 Additional Resources

### Documentation
- [Electron Documentation](https://www.electronjs.org/docs)
- [Windows Development](https://docs.microsoft.com/en-us/windows/)
- [NSIS Documentation](https://nsis.sourceforge.io/Docs/)

### Tools
- [Electron Builder](https://www.electron.build/)
- [NSIS Installer](https://nsis.sourceforge.io/)
- [Windows App SDK](https://docs.microsoft.com/en-us/windows/apps/)

### Community
- [Electron Discord](https://discord.gg/electron)
- [Stack Overflow](https://stackoverflow.com/questions/tagged/electron)
- [GitHub Discussions](https://github.com/electron/electron/discussions)

---

**Need Help?** Check the troubleshooting section or create an issue in the project repository.

**Happy Deploying!** 🚀🎯 