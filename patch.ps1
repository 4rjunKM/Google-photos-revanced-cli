# ReVanced Auto Patch Script

Write-Host "Starting ReVanced patch process..." -ForegroundColor Green

# File names (change if needed)
$cli = "revanced-cli.jar"
$patches = "patches.rvp"
$input = "Input.apk"
$output = "patched.apk"

# Run patch command
java -jar $cli patch -p $patches -b -o $output $input

# Check result
if (Test-Path $output) {
    Write-Host "✅ Patch completed successfully!" -ForegroundColor Green
    Write-Host "Output: $output"
} else {
    Write-Host "❌ Patch failed. Check errors above." -ForegroundColor Red
}

Pause