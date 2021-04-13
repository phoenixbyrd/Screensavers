#!/bin/bash

#Setup wine prefix
dir=/home/pi/.screensavers
if [[ ! -e $dir ]]; then
	WINEARCH=win32 WINEPREFIX=/home/pi/.screensavers winecfg	
fi

#Install screensaver
cp 3DPipes.scr /home/pi/.screensavers/drive_c/windows/
cp 3dpipes.sh /home/pi/.screensavers/
sudo cp 3dpipes.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start 3dpipes
sudo systemctl enable 3dpipes

#Display screensaver after install
WINEPREFIX=~/.screensavers wine '/home/pi/.screensavers/drive_c/windows/3DPipes.scr' /s

#Clear screen and print instructions
clear
echo "Reload service daemon: sudo systemctl daemon-reload"
echo "Verify service is running: sudo systemctl status 3dpipes"
echo "Enable on startup: sudo systemctl enable 3dpipes"
echo "Start 3dpipes service: sudo systemctl start 3dpipes"
echo "Stop 3dpipes service: sudo systemctl stop 3dpipes"