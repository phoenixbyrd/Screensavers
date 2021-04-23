#!/bin/bash

#Setup wine prefix
dir=/home/pi/.screensavers
if [[ ! -e $dir ]]; then
	WINEARCH=win32 WINEPREFIX=/home/pi/.screensavers winecfg	
fi

#Install screensaver
cp RetroSciFi.scr /home/pi/.screensavers/drive_c/windows/
cp RetroSciFi.sh /home/pi/.screensavers/
cp *.TTF /home/pi/.screensavers/drive_c/windows/Fonts
sudo cp screensaver.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start screensaver
sudo systemctl enable screensaver

#Display screensaver after install
WINEPREFIX=~/.screensavers wine '/home/pi/.screensavers/drive_c/windows/RetroSciFi.scr' /s

#Clear screen and print instructions
clear
echo "Reload service daemon: sudo systemctl daemon-reload"
echo "Verify service is running: sudo systemctl status screensaver"
echo "Enable on startup: sudo systemctl enable screensaver"
echo "Start 3dpipes service: sudo systemctl start screensaver"
echo "Stop 3dpipes service: sudo systemctl stop screensaver"