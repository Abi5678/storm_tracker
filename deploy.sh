#!/bin/bash

# Advanced Storm Tracker Desktop Application Deployment Script
# This script builds and packages the application for distribution

set -e  # Exit on any error

echo "🚀 Starting Advanced Storm Tracker Desktop Application Deployment..."

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js version 16 or higher."
    exit 1
fi

# Check Node.js version
NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 16 ]; then
    echo "❌ Node.js version 16 or higher is required. Current version: $(node -v)"
    exit 1
fi

echo "✅ Node.js version: $(node -v)"

# Install dependencies if node_modules doesn't exist
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    npm install
else
    echo "✅ Dependencies already installed"
fi

# Clean previous builds
echo "🧹 Cleaning previous builds..."
rm -rf dist/

# Build the application
echo "🔨 Building application..."
npm run pack

# Check if build was successful
if [ -d "dist/mac-arm64" ]; then
    echo "✅ Build successful!"
    echo "📁 Application created in: dist/mac-arm64/Advanced Storm Tracker.app"
    
    # Create distribution package
    echo "📦 Creating distribution package..."
    
    # Create a zip file for easy distribution
    cd dist
    zip -r "Advanced-Storm-Tracker-macOS.zip" "mac-arm64/"
    echo "✅ Distribution package created: dist/Advanced-Storm-Tracker-macOS.zip"
    
    echo ""
    echo "🎉 Deployment completed successfully!"
    echo ""
    echo "📋 Next steps:"
    echo "1. Test the application: open 'dist/mac-arm64/Advanced Storm Tracker.app'"
    echo "2. Share the zip file: 'dist/Advanced-Storm-Tracker-macOS.zip'"
    echo "3. For production builds, run: npm run dist"
    echo ""
    echo "📱 To install on other machines:"
    echo "- Extract the zip file"
    echo "- Drag 'Advanced Storm Tracker.app' to Applications folder"
    echo "- Launch from Applications or Spotlight"
    
else
    echo "❌ Build failed. Check the error messages above."
    exit 1
fi 