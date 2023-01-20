$servers = @('kzmboz3020','kzmboz2103', 'kzmboz8888')
for ($i = 0; $i -lt $servers.Length; $i++) {
    if (Test-Connection -ComputerName $servers[$i] -Quiet -Count 1) {
                Write-Host "Ура! Сервер " -NoNewline
                Write-Host "$($servers[$i])" -ForegroundColor green -NoNewline
                " доступен!"
            } else {
                Write-Host "Сервер $($servers[$i]) не доступен!" -ForegroundColor red -BackgroundColor white
        }
    }