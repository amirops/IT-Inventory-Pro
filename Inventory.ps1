Import-Module "$PSScriptRoot\Modules\SystemInfo.psm1"

Clear-Host

Write-Host ""
Write-Host "IT-Inventory-Pro"
Write-Host ""

$Info = Get-SystemInfo

$Info | Format-List
