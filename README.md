# 🌨️ Advanced Storm Tracker Desktop Application

A powerful, cross-platform desktop application for tracking storm costs and management, built with Electron. Track labor costs, equipment usage, product consumption, and contractor services with an intuitive, modern interface.

## ✨ Features

- **🌪️ Storm Cost Tracking** - Comprehensive storm event logging and cost analysis
- **👥 Labor Management** - Track worker hours, rates, and overtime calculations
- **🚛 Equipment Costs** - Monitor equipment usage, hours, and hourly rates
- **📦 Product Inventory** - Track materials, supplies, and consumption rates
- **🏗️ Contractor Services** - Record external service costs and expenses
- **📊 Real-time Analytics** - Interactive charts and cost breakdowns
- **🖨️ Professional Reporting** - Print reports and export to PDF
- **🌙 Dark Mode Support** - Modern UI with light/dark theme options
- **📱 Responsive Design** - Works on all screen sizes and resolutions
- **💾 Local Data Storage** - Secure, offline-first data management

## 🚀 Quick Start

### Prerequisites

- **Node.js** (version 16 or higher)
- **npm** (comes with Node.js)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/storm-tracker-desktop.git
   cd storm-tracker-desktop
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Run the application**
   ```bash
   npm start
   ```

## 🏗️ Building for Distribution

### macOS
```bash
# Build DMG installer
npm run dmg

# Build for specific architecture
npm run build -- --mac --arm64
npm run build -- --mac --x64
```

### Windows
```bash
# Build Windows installer
npm run win-installer

# Build portable executable
npm run win-portable

# Build all Windows targets
npm run win
```

### Linux
```bash
# Build Linux packages
npm run build -- --linux
```

## 📱 Platform Support

| Platform | Status | Build Target |
|----------|--------|--------------|
| **macOS** | ✅ Full Support | DMG, PKG |
| **Windows** | ✅ Full Support | NSIS Installer, Portable |
| **Linux** | ✅ Full Support | AppImage, DEB, RPM |

## 🛠️ Development

### Project Structure
```
storm-tracker-desktop/
├── main.js              # Main Electron process
├── index.html           # Application interface
├── package.json         # Dependencies and build config
├── assets/              # Icons and resources
├── build-scripts/       # Platform-specific build scripts
└── dist/                # Built applications
```

### Key Technologies
- **Electron** - Cross-platform desktop framework
- **HTML/CSS/JavaScript** - Frontend interface
- **Chart.js** - Data visualization
- **Tailwind CSS** - Styling framework
- **Firebase** - Backend services (optional)

### Development Commands
```bash
# Start development server
npm start

# Build for development
npm run build

# Package for distribution
npm run dist

# Run tests (if configured)
npm test
```

## 📊 Application Screenshots

### Dashboard View
- Cost overview and statistics
- Interactive charts and graphs
- Quick access to recent storms

### Data Entry Forms
- Tabbed interface for different cost categories
- Dynamic form generation
- Real-time cost calculations

### Reports and Analytics
- Detailed storm cost breakdowns
- Exportable reports
- Print-friendly layouts

## 🔧 Configuration

### Environment Variables
```bash
# Optional: Firebase configuration
FIREBASE_API_KEY=your_api_key
FIREBASE_PROJECT_ID=your_project_id
```

### Build Configuration
The `package.json` file contains comprehensive build configurations for all platforms, including:
- App metadata and branding
- Platform-specific settings
- Icon and resource paths
- Installer configurations

## 🚀 Deployment

### GitHub Releases
1. **Tag your release**
   ```bash
   git tag v1.0.0
   git push origin v1.0.0
   ```

2. **Create GitHub release** with built artifacts
3. **Upload platform-specific installers**

### Automated Builds
- Use GitHub Actions for CI/CD
- Automated testing and building
- Release management

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guide](CONTRIBUTING.md) for details.

### Development Setup
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

### Documentation
- [User Guide](docs/USER_GUIDE.md)
- [API Reference](docs/API.md)
- [Troubleshooting](docs/TROUBLESHOOTING.md)

### Getting Help
- 📧 **Email:** support@stormtracker.com
- 💬 **Discord:** [Join our community](https://discord.gg/stormtracker)
- 🐛 **Issues:** [GitHub Issues](https://github.com/yourusername/storm-tracker-desktop/issues)
- 📖 **Wiki:** [Project Wiki](https://github.com/yourusername/storm-tracker-desktop/wiki)

## 🙏 Acknowledgments

- **Electron Team** - For the amazing cross-platform framework
- **Chart.js** - For beautiful data visualization
- **Tailwind CSS** - For the modern styling system
- **Community Contributors** - For bug reports and feature suggestions

---

## 📈 Roadmap

### Version 1.1 (Q4 2024)
- [ ] Cloud sync capabilities
- [ ] Advanced reporting templates
- [ ] Mobile companion app
- [ ] API integrations

### Version 1.2 (Q1 2025)
- [ ] Multi-user support
- [ ] Role-based access control
- [ ] Advanced analytics
- [ ] Export to multiple formats

## 📚 UX Portfolio

For a comprehensive look at the user experience design process, research methodology, and project case study, visit our complete UX portfolio:

**[📊 Complete UX Portfolio](PORTFOLIO_INDEX.md)**

The portfolio includes:
- **User Research & Testing** - Comprehensive research methodology and findings
- **Design Mockups & Wireframes** - Visual specifications and component library
- **Case Study** - Detailed project analysis and business impact
- **UX Portfolio** - Complete design process documentation

---

**Made with ❤️ for storm management professionals**

*Track storms, manage costs, stay ahead of the weather!* 🌨️📊 