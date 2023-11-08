Start-Sleep -s 2
for ($i = 1; $i -le 6; $i++) {
    # Get the Bluetooth service
    $bluetoothService = Get-WmiObject -Query "Select * From Win32_Service Where Name = 'bthserv'"

    # Stop the Bluetooth service
    $bluetoothService.StopService()

    # Wait for 5 seconds
    Start-Sleep -s 5

    # Start the Bluetooth service
    $bluetoothService.StartService()
}
