#!/bin/bash

#Setup wine prefix
dir=/home/pi/.screensavers
if [[ ! -e $dir ]]; then
	WINEARCH=win32 WINEPREFIX=/home/pi/.screensavers winecfg	
fi

#Install screensaver
WINEPREFIX=~/.screensavers wine starfield.exe
cp starfield.sh /home/pi/.screensavers/
sudo cp screensaver.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start starfield
sudo systemctl enable starfield

#Display screensaver after install
WINEPREFIX=~/.screensavers wine '/home/pi/.screensavers/drive_c/Program Files/Starfield Screensaver/Starfield.scr' /s

#Clear screen and print instructions
clear
echo "Reload service daemon: sudo systemctl daemon-reload"
echo "Verify service is running: sudo systemctl status screensaver"
echo "Enable on startup: sudo systemctl enable screensaver"
echo "Start 3dpipes service: sudo systemctl start screensaver"
echo "Stop 3dpipes service: sudo systemctl stop screensaver"