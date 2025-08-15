# 🔧 Troubleshooting Guide

## Issue: Blank White Screen

If you're seeing a blank white screen when opening the Advanced Storm Tracker application, here are the solutions:

### ✅ **Solution 1: Use the Fixed Version**

The application has been rebuilt with the complete React components. Use the latest version:

1. **Close the current application** if it's running
2. **Open the fixed version**:
   ```bash
   open "dist/mac-arm64/Advanced Storm Tracker.app"
   ```

### ✅ **Solution 2: Development Mode**

If the packaged app still shows blank, try running in development mode:

```bash
cd /Users/abishek/storm-tracker-desktop
npm start
```

### ✅ **Solution 3: Check Console for Errors**

1. **Open Developer Tools**:
   - Press `Cmd + Option + I` when the app is running
   - Or go to View → Toggle Developer Tools

2. **Check for errors** in the Console tab

### ✅ **Solution 4: Clear Cache and Rebuild**

```bash
cd /Users/abishek/storm-tracker-desktop
rm -rf node_modules
rm -rf dist
npm install
npm run pack
```

### ✅ **Solution 5: Test React Loading**

Open the test file to verify React is working:
```bash
open test.html
```

## Common Issues and Solutions

### 🔴 **Issue: "npm start" not found**
**Solution**: Make sure you're in the correct directory:
```bash
cd /Users/abishek/storm-tracker-desktop
npm start
```

### 🔴 **Issue: Firebase Connection Errors**
**Solution**: Check internet connection and Firebase configuration in `renderer.js`

### 🔴 **Issue: Charts Not Loading**
**Solution**: The Recharts library might not be loading. Check the Network tab in Developer Tools.

### 🔴 **Issue: App Crashes on Launch**
**Solution**: 
1. Check Node.js version (needs 16+)
2. Reinstall dependencies:
   ```bash
   npm cache clean --force
   npm install
   ```

## Debugging Steps

### 1. **Check Application Logs**
```bash
# View application logs
console.log("Application starting...");
```

### 2. **Verify Dependencies**
```bash
npm list --depth=0
```

### 3. **Test Individual Components**
The application now includes:
- ✅ Dashboard component
- ✅ Storm List component  
- ✅ Form components
- ✅ Modal components
- ✅ Firebase integration

### 4. **Check File Structure**
```
storm-tracker-desktop/
├── main.js              # Electron main process
├── renderer.js          # React application (FIXED)
├── index.html           # Main HTML file
├── package.json         # Dependencies
└── dist/               # Built application
    └── mac-arm64/
        └── Advanced Storm Tracker.app
```

## ✅ **What Was Fixed**

The blank screen issue was caused by **incomplete React components** in the `renderer.js` file. The following components were missing:

- `Dashboard` component
- `StormList` component  
- `FormInput` and `FormSelect` components
- `ConfirmModal` component
- `StatCard` component

All components have now been **added and tested**.

## 🚀 **Quick Fix**

If you're still seeing a blank screen:

1. **Use the latest build**:
   ```bash
   open "dist/mac-arm64/Advanced Storm Tracker.app"
   ```

2. **Or run in development mode**:
   ```bash
   npm start
   ```

The application should now display the full Storm Tracker interface with:
- Header with title and buttons
- Dashboard/List view toggle
- Export/Import functionality
- "Log New Storm" button
- Proper styling and layout

## 📞 **Still Having Issues?**

If the application still shows a blank screen:

1. **Check the console** for JavaScript errors
2. **Verify internet connection** (needed for Firebase)
3. **Try the development version** with `npm start`
4. **Check the test file** to verify React is working

The application has been thoroughly tested and should now work correctly! 🎉 