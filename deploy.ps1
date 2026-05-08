$Message = Read-Host "Enter commit message (leave blank for 'Update site')"

if ([string]::IsNullOrWhiteSpace($Message)) {
    $Message = "Update site"
}

Write-Host "Staging all changes..." -ForegroundColor Cyan
git add .

Write-Host "Committing changes with message: '$Message'..." -ForegroundColor Cyan
git commit -m $Message

Write-Host "Pushing to GitHub..." -ForegroundColor Cyan
git push

Write-Host "Done!" -ForegroundColor Green
