# Set the root path
$main_folder = (Get-Item .).FullName
Set-Location -Path $main_folder
# Delete these files
If (Test-Path "_site") {
    Write-Output "_site detected, removing..."
    Remove-Item -Path "_site" -Recurse -Force
}
# Serve the site
$env:JEKYLL_ENV = "development"
Write-Output "Running: $env:JEKYLL_ENV"
bundle exec jekyll serve