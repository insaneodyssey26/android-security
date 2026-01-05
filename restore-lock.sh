#!/bin/bash
# Nothing Phone (2) Stock Restoration Script
# Requirement: Unzip your stock firmware into this folder before running.

echo "--- Starting Stock Restoration ---"
adb reboot bootloader
sleep 5

echo "Flashing core partitions..."
fastboot flash boot boot.img
fastboot flash vendor_boot vendor_boot.img
fastboot flash dtbo dtbo.img
fastboot flash recovery recovery.img

echo "Rebooting to FastbootD (Userspace)..."
fastboot reboot fastboot
sleep 10

echo "Restoring System and Product partitions..."
fastboot flash system system.img
fastboot flash product product.img
fastboot flash vendor vendor.img

echo "Finalizing: Wiping data for a clean start..."
fastboot -w

echo "DONE. You can now reboot and relock the bootloader."
fastboot reboot