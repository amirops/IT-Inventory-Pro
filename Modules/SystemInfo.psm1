function Get-SystemInfo {

    $os = Get-CimInstance Win32_OperatingSystem
    $computer = Get-CimInstance Win32_ComputerSystem
    $bios = Get-CimInstance Win32_BIOS

    [PSCustomObject]@{

        ComputerName = $env:COMPUTERNAME
        UserName     = $env:USERNAME

        WindowsName  = $os.Caption
        Version      = $os.Version
        BuildNumber  = $os.BuildNumber

        Manufacturer = $computer.Manufacturer
        Model        = $computer.Model

        Domain       = $computer.Domain

        BIOS         = $bios.SMBIOSBIOSVersion

    }

}

Export-ModuleMember -Function Get-SystemInfo
