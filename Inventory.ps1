Import-Module "$PSScriptRoot\Modules\SystemInfo.psm1"

Clear-Host

$ReportFolder = "$PSScriptRoot\Reports"

if (!(Test-Path $ReportFolder)) {
    New-Item -ItemType Directory -Path $ReportFolder | Out-Null
}

$Time = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"

$ReportFile = "$ReportFolder\$env:COMPUTERNAME-$Time.txt"

$Info = Get-SystemInfo

@"
==========================================
        IT-Inventory-Pro
==========================================

Computer Name : $($Info.ComputerName)
User Name     : $($Info.UserName)

Windows       : $($Info.WindowsName)
Version       : $($Info.Version)
Build Number  : $($Info.BuildNumber)

Manufacturer  : $($Info.Manufacturer)
Model         : $($Info.Model)

Domain        : $($Info.Domain)

BIOS Version  : $($Info.BIOS)

==========================================

"@ | Out-File $ReportFile -Encoding UTF8

Write-Host ""
Write-Host "Inventory Report Created Successfully" -ForegroundColor Green
Write-Host ""
Write-Host $ReportFile -ForegroundColor Yellow
