#!/bin/bash
#Install screensaver
WINEARCH=win32 WINEPREFIX=/home/pi/.lcars winecfg
WINEPREFIX=~/.lcars wine system47\ v2.2_setup.exe
cp lcars.sh /home/pi/.lcars/
sudo cp lcars.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start lcars
sudo systemctl enable lcars

#Display screensaver after install
WINEPREFIX=~/.lcars wine '/home/pi/.lcars/drive_c/windows/system32/System47.scr' /s

#Clear screen and print instructions
clear
echo "Reload service daemon: sudo systemctl daemon-reload"
echo "Verify service is running: sudo systemctl status lcars"
echo "Enable on startup: sudo systemctl enable lcars"
echo "Start 3dpipes service: sudo systemctl start lcars"
echo "Stop 3dpipes service: sudo systemctl stop lcars"