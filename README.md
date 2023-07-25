# Powershell Device Disable

## How to use

1. Open a Powershell Terminal running in Administrator
2. Execute the following command, where `MY-DEVICE-NAME` is the name of the device you're trying to disable:

    ```powershell
    .\disable-pnp-device.ps1 -DeviceName 'MY-DEVICE-NAME'
    ```

3. If you want it to randomly disable the device, you can execute the following command:

    ```powershell
    .\randomize-disable.ps1 -DeviceName 'MY-DEVICE-NAME'
    ```

4. Optional: The `randomize-disable.ps1` comes with additional properties if you want to modify the time delay and number of times to trigger:

    ```powershell
    .\randomize-disable.ps1 -DeviceName 'MY-DEVICE-NAME' -MaxNumberToTrigger 100 -MinSeconds 5 -MaxSeconds 50
    ```
