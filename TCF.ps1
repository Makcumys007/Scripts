$servers = @('kzmboz3020','kzmboz2103', 'kzmboz8888')
    foreach ($server in $servers) {
    if (Test-Connection -ComputerName $server -Quiet -Count 1) {
        Write-Host "Ура! Сервер " -NoNewline
        Write-Host "$($server)" -ForegroundColor green -NoNewline
        " доступен!"
    } else {
        Write-Host "Сервер $($server) не доступен!" -ForegroundColor red -BackgroundColor white
    }
}