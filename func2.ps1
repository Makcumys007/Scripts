function Install-software {
    param(
        [Parameter(Mandatory)]
        [string]$Version
        [ValidateSet('1' , '2')],

        [Parametr(Mandatory)]
        [string]$ComputerName
    )
    Write-Host "I installed software version $Version on $ComputerName. Yippee!"
}