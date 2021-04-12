#!/bin/bash
#Install screensaver
WINEARCH=win32 WINEPREFIX=/home/pi/.aurora winecfg
cp aurora.scr /home/pi/.aurora/drive_c/windows/
cp aurora.sh /home/pi/.aurora/
sudo cp aurora.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start aurora
sudo systemctl enable aurora

#Display screensaver after install
WINEPREFIX=~/.aurora wine '/home/pi/.aurora/drive_c/windows/aurora.scr' /s

#Clear screen and print instructions
clear
echo "Reload service daemon: sudo systemctl daemon-reload"
echo "Verify service is running: sudo systemctl status aurora"
echo "Enable on startup: sudo systemctl enable aurora"
echo "Start 3dpipes service: sudo systemctl start aurora"
echo "Stop 3dpipes service: sudo systemctl stop aurora"