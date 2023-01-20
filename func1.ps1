function Install-Software {
    [CmdletBinding()]
    param(
        [Parametr()]
        [string] $Version
    )
    Write-Host "I installed software version $Version. Yippee!"
}