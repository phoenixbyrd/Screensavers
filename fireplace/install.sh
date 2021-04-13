#!/bin/bash

#Setup wine prefix
dir=/home/pi/.screensavers
if [[ ! -e $dir ]]; then
	WINEARCH=win32 WINEPREFIX=/home/pi/.screensavers winecfg	
fi

#Install screensaver
cp fireplace.scr /home/pi/.screensavers/drive_c/windows/
cp fireplace.sh /home/pi/.screensavers/
sudo cp fireplace.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start fireplace
sudo systemctl enable fireplace

#Display screensaver after install
WINEPREFIX=~/.screensavers wine '/home/pi/.screensavers/drive_c/windows/fireplace.scr' /s

#Clear screen and print instructions
clear
echo "Reload service daemon: sudo systemctl daemon-reload"
echo "Verify service is running: sudo systemctl status fireplace"
echo "Enable on startup: sudo systemctl enable fireplace"
echo "Start 3dpipes service: sudo systemctl start fireplace"
echo "Stop 3dpipes service: sudo systemctl stop fireplace"