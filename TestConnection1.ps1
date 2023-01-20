$servers = @('kzmboz3020','kzmboz2103', 'kzmboz8888')
    if (Test-Connection -ComputerName $servers[2] -Quiet -Count 1) {
        "Ура! Сервер $($servers[2]) доступен!"
    } else {
        "Сервер $($servers[2]) не доступен!" 
    }