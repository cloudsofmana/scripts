Get-WinEvent -FilterHashTable @{LogName='Application','System'; Level=2; StartTime=(Get-Date).AddDays(-30)} -ErrorAction SilentlyContinue | Select-Object TimeCreated,LogName,ProviderName,Id,LevelDisplayName,Message | Sort TimeCreated | Export-Csv -Path c:\EventLog_$(hostname)_$(Get-Date -Format yyyy-MM-dd_hhmmtt).csv -Encoding ascii -NoTypeInformation