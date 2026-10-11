# Read-only Windows workstation health check
Write-Host "=== WINDOWS SYSTEM HEALTH CHECK ==="
Write-Host "`n--- COMPUTER INFORMATION ---"
Get-ComputerInfo | Select-Object CsName, WindowsProductName, OsVersion | Format-List | Out-Host
Write-Host "`n--- CPU INFORMATION ---"
Get-CimInstance Win32_Processor | Select-Object Name, NumberOfLogicalProcessors | Format-List | Out-Host
Write-Host "`n--- DISK SPACE ---"
Get-PSDrive -PSProvider FileSystem | Select-Object Name, @{Name="FreeGB";Expression={[math]::Round($_.Free/1GB,2)}}, @{Name="UsedGB";Expression={[math]::Round($_.Used/1GB,2)}} | Format-Table -AutoSize | Out-Host
Write-Host "`n--- NETWORK CONFIGURATION ---"
Get-NetIPConfiguration | Select-Object InterfaceAlias, IPv4Address, IPv4DefaultGateway | Format-List | Out-Host
Write-Host "`n--- PRINT SPOOLER STATUS ---"
Get-Service -Name Spooler | Select-Object Status, Name, DisplayName | Format-Table -AutoSize | Out-Host
Write-Host "`nDiagnostic check completed!"
