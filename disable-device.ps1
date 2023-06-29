$search = *Logitech*BRIO*
$devices = Get-PnpDevice -FriendlyName $search


foreach ($i in 1..10) {
    Write-Output ""
    Write-Output "======= REPEAT $($i) ======="
    foreach ($device in $devices) {
        Write-Output ""
        Write-Output "Class: $($device.Class), FriendlyName: $($device.FriendlyName), InstanceId: $($device.InstanceId)"

        Write-Output "Killing Device"
        Disable-PnpDevice -InstanceId $device.InstanceId -Confirm:$false

        Start-Sleep -Seconds 2

        Write-Output "Starting Device"
        Enable-PnpDevice -InstanceId $device.InstanceId -Confirm:$false
    }
}

Get-PnpDevice -FriendlyName $search
Write-Output "DONE"
