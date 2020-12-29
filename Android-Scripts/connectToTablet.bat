@echo off
set /p ipaddress="Enter IP: "
adb connect 192.168.1.%ipaddress%:5555
adb devices
