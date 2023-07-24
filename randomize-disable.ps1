param(
    [Parameter(Mandatory = $true)]
    [string]$DeviceName
)

$scriptName = "disable-pnp-device.ps1";
for ($i = 1; $i -le 5; $i++) {
    $randomSleepSeconds = Get-Random -Minimum 1 -Maximum 10

    Write-Output "Sleeping for $randomSleepSeconds seconds"

    Start-Sleep -Seconds $randomSleepSeconds

    Write-Output "Now executing $scriptName"
    & "./$scriptName" -DeviceName $DeviceName

    Write-Output "Finish executing script!"
}

Write-Output "FINISHED!"