# Build Instructions

This project can be built locally or via GitHub Actions.

## Local build without Android Studio

### 1. Install JDK 17

Install a compatible Java JDK (Temurin 17 recommended).

### 2. Install Android command-line SDK tools

You need the Android SDK platform and build tools.

If you already have `ANDROID_HOME` or `ANDROID_SDK_ROOT` set, skip this step.

If not, install the command-line SDK tools manually from Google:

- https://developer.android.com/studio#command-tools

Then set either environment variable to the SDK root directory.

### 3. Create `local.properties`

Copy `local.properties.example` to `local.properties`.

Example contents:

```properties
sdk.dir=C:\Users\<your-user>\AppData\Local\Android\Sdk
```

### 4. Build the app

Open PowerShell in the project root and run:

```powershell
cd "C:\Users\abhijiths\Downloads\YMusic-Youtube-Multilingual-Music-Player-for-Android-master\YMusic-Youtube-Multilingual-Music-Player-for-Android-master"
.\gradlew assembleDebug
```

### 5. APK output

After a successful build, the debug APK is located at:

```
app\build\outputs\apk\debug\app-debug.apk
```

## Build via GitHub Actions

Push this repository to GitHub, then navigate to the Actions tab and run the `CI` workflow.

The workflow now uploads `app-debug.apk` as an artifact.
