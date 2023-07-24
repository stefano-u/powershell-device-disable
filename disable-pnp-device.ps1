param(
    [Parameter(Mandatory = $true)]
    [string]$DeviceName
)

$devices = Get-PnpDevice -FriendlyName $DeviceName


foreach ($device in $devices) {
    Write-Output ""
    Write-Output "Class: $($device.Class), FriendlyName: $($device.FriendlyName), InstanceId: $($device.InstanceId)"

    Write-Output "Killing Device"
    Disable-PnpDevice -InstanceId $device.InstanceId -Confirm:$false

    Start-Sleep -Seconds 2

    Write-Output "Starting Device"
    Enable-PnpDevice -InstanceId $device.InstanceId -Confirm:$false
}
