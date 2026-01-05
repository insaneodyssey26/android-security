#!/bin/bash
# Wake up Shizuku on Android 16 (Nothing OS 4.0)
echo "Starting Shizuku Service..."
adb shell sh /sdcard/Android/data/moe.shizuku.privileged.api/start.sh
echo "Shizuku Service Started."