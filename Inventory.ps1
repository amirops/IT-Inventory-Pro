<#
    IT-Inventory-Pro
    Version : 0.1.0
    Author  : Amir Bahmanabadi

    Enterprise Windows Inventory Tool
#>

Clear-Host

$Version = "0.1.0"

Write-Host ""
Write-Host "=============================================" -ForegroundColor Cyan
Write-Host "          IT-Inventory-Pro" -ForegroundColor Green
Write-Host "=============================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Version : $Version"
Write-Host "Computer: $env:COMPUTERNAME"
Write-Host "User    : $env:USERNAME"
Write-Host "Date    : $(Get-Date)"
Write-Host ""
Write-Host "Loading modules..."
Write-Host ""
