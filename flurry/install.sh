#!/bin/bash
#Install screensaver
WINEARCH=win32 WINEPREFIX=/home/pi/.flurry winecfg
cp flurry.scr /home/pi/.flurry/drive_c/windows/
cp flurry.sh /home/pi/.flurry/
sudo cp flurry.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start flurry
sudo systemctl enable flurry

#Display screensaver after install
WINEPREFIX=~/.flurry wine '/home/pi/.flurry/drive_c/windows/flurry.scr' /s

#Clear screen and print instructions
clear
echo "Reload service daemon: sudo systemctl daemon-reload"
echo "Verify service is running: sudo systemctl status flurry"
echo "Enable on startup: sudo systemctl enable flurry"
echo "Start 3dpipes service: sudo systemctl start flurry"
echo "Stop 3dpipes service: sudo systemctl stop flurry"