$servers = Get-Content -Path C:\servers.txt
foreach ($server in $servers) {
    Get-WinEvent -ComputerName $server -MaxEvents 5 -FilterHashtable @{
        LogName = "Application"
       #LogName = "Application"
    } | Select-Object -Property ID, MachineName
}

