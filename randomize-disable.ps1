param(
    [Parameter(Mandatory = $true)]
    [string]$DeviceName,
    [int]$MaxNumberToTrigger = 5,
    [int]$MinSeconds = 1,
    [int]$MaxSeconds = 10
)

$scriptName = "disable-pnp-device.ps1";
for ($i = 1; $i -le $MaxNumberToTrigger; $i++) {
    $randomSleepSeconds = Get-Random -Minimum $MinSeconds -Maximum $MaxSeconds

    Write-Host -ForegroundColor Yellow "Sleeping for $randomSleepSeconds seconds"

    Start-Sleep -Seconds $randomSleepSeconds

    Write-Output "Now executing $scriptName..."
    & "./$scriptName" -DeviceName $DeviceName

    Write-Output "Finish executing $scriptName..."
}

Write-Host -ForegroundColor Green "FINISHED!"