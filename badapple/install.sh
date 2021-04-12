#!/bin/bash
#Install screensaver
WINEARCH=win32 WINEPREFIX=/home/pi/.badapple winecfg
cp badapple.scr /home/pi/.badapple/drive_c/windows/
cp badapple.sh /home/pi/.badapple/
sudo cp badapple.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start badapple
sudo systemctl enable badapple

#Display screensaver after install
WINEPREFIX=~/.badapple wine '/home/pi/.badapple/drive_c/windows/badapple.scr' /s

#Clear screen and print instructions
clear
echo "Reload service daemon: sudo systemctl daemon-reload"
echo "Verify service is running: sudo systemctl status badapple"
echo "Enable on startup: sudo systemctl enable badapple"
echo "Start 3dpipes service: sudo systemctl start badapple"
echo "Stop 3dpipes service: sudo systemctl stop badapple"