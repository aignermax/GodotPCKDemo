# Adjust the Godot path and arguments as per your local setup
$godotPath = $env:GODOT
$releaseDir = "Release"

# Delete all old Releases
if (Test-Path $releaseDir) {
    Remove-Item -Path "Release\*" -Recurse -Force
    Write-Host "Release Folder got cleared"
}

# Create Build Directory
if (-not (Test-Path $releaseDir)) {
    New-Item -ItemType Directory -Path $releaseDir
}

# Build Windows EXE
$godotArgs = "--headless", "--export-release", "`"Windows Desktop`""
$godotProcess = Start-Process -FilePath $godotPath -ArgumentList $godotArgs -PassThru
$godotProcess.WaitForExit()
