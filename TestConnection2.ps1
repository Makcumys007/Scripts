$servers = @('kzmboz3020','kzmboz2103', 'kzmboz8888')
$currentServer = $servers[2]
    switch ($currentServer) {
        $servers[0] {
            "This is $($servers[0])"
            break
        }
        $servers[1] {
            "This is $($servers[1])"
            break
        }
        $servers[2] {
            "This is $($servers[2])"
            if (Test-Connection -ComputerName $servers[2] -Quiet -Count 1) {
                "Ура! Сервер $($servers[2]) доступен!"
            } else {
                "Сервер $($servers[2]) не доступен!" 
            }
            break
        }

    }