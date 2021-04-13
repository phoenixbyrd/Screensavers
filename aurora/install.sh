#!/bin/bash

#Setup wine prefix
dir=/home/pi/.screensavers
if [[ ! -e $dir ]]; then
	WINEARCH=win32 WINEPREFIX=/home/pi/.screensavers winecfg	
fi

#Install screensaver
cp aurora.scr /home/pi/.screensavers/drive_c/windows/
cp aurora.sh /home/pi/.screensavers/
sudo cp screensaver.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start aurora
sudo systemctl enable aurora

#Display screensaver after install
WINEPREFIX=~/.screensavers wine '/home/pi/.screensavers/drive_c/windows/aurora.scr' /s

#Clear screen and print instructions
clear
echo "Reload service daemon: sudo systemctl daemon-reload"
echo "Verify service is running: sudo systemctl status screensaver"
echo "Enable on startup: sudo systemctl enable screensaver"
echo "Start 3dpipes service: sudo systemctl start screensaver"
echo "Stop 3dpipes service: sudo systemctl stop screensaver"