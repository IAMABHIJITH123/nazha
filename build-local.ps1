# Build the YMusic/NAZHA app locally.
# This script creates local.properties if needed and runs Gradle assembleDebug.

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $root

function Fail($message) {
    Write-Host "ERROR: $message" -ForegroundColor Red
    exit 1
}

$sdkDir = $null
if ($env:ANDROID_SDK_ROOT -and (Test-Path $env:ANDROID_SDK_ROOT)) {
    $sdkDir = $env:ANDROID_SDK_ROOT
} elseif ($env:ANDROID_HOME -and (Test-Path $env:ANDROID_HOME)) {
    $sdkDir = $env:ANDROID_HOME
}

if (-not $sdkDir) {
    Fail "Android SDK not found. Set ANDROID_SDK_ROOT or ANDROID_HOME to the SDK location, or create local.properties manually from local.properties.example."
}

$localProps = Join-Path $root 'local.properties'
if (-not (Test-Path $localProps)) {
    "sdk.dir=$sdkDir" | Out-File -FilePath $localProps -Encoding ascii
    Write-Host "Created local.properties with sdk.dir=$sdkDir"
}

Write-Host "Building debug APK..."
& .\gradlew assembleDebug --stacktrace
if ($LASTEXITCODE -ne 0) {
    Fail "Gradle build failed. See the output above for details."
}

Write-Host "Build succeeded. APK path: app\build\outputs\apk\debug\app-debug.apk" -ForegroundColor Green
