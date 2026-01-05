#!/bin/bash
# Generic Android Health Check
echo "--- Device Info ---"
adb shell getprop ro.product.model
adb shell getprop ro.build.version.release
echo "--- Battery Status ---"
adb shell dumpsys battery | grep level
echo "--- Play Integrity / Bootloader ---"
# Checks if the system thinks it is 'clean'
adb shell getprop ro.boot.verifiedbootstate
adb shell getprop ro.boot.flash.locked