# Flutter Smart Bed Remote Control

A Windows application for controlling a smart hospital bed.

## Build Instructions for Windows

### Prerequisites
1. Install [Visual Studio 2022](https://visualstudio.microsoft.com/vs/) with "Desktop development with C++"
2. Install [Windows 10 SDK](https://developer.microsoft.com/en-us/windows/downloads/windows-sdk/)
3. Install [Flutter for Windows](https://docs.flutter.dev/get-started/install/windows)
4. Install [Git](https://git-scm.com/download/win)

### Build Steps
1. Clone the repository:
```bash
git clone [your-repo-url]
cd flutter-smartbed
```

2. Enable Windows desktop support:
```bash
flutter config --enable-windows-desktop
```

3. Get dependencies:
```bash
flutter pub get
```

4. Build Windows executable:
```bash
flutter build windows
```

The built application will be available in:
```
build/windows/runner/Release/
```

### Running the Application
1. Navigate to `build/windows/runner/Release/`
2. Run `flutter_smartbed.exe`

### Distribution
To distribute the application:
1. Copy the entire `Release` folder
2. Create a ZIP file
3. Share the ZIP file with users
4. Users can unzip and run `flutter_smartbed.exe`

## Features
- Patient position controls (left/right turning)
- Leg and back position adjustment
- Toilet compartment control
- Automatic turning modes (A/B)
- Auto sit-up function
- Emergency stop
- Reset function
