#!/bin/bash
# Warning: This will wipe your data one last time.
echo "Rebooting to Bootloader..."
adb reboot bootloader
sleep 5

echo "Sending Lock Command..."
echo "ON YOUR PHONE: Use Volume keys to select 'LOCK THE BOOTLOADER' and press Power."
fastboot flashing lock