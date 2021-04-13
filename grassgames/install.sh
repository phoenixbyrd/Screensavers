#!/bin/bash

#Setup wine prefix
dir=/home/pi/.screensavers
if [[ ! -e $dir ]]; then
	WINEARCH=win32 WINEPREFIX=/home/pi/.screensavers winecfg	
fi

#Install screensaver
cp grassgames.scr /home/pi/.screensavers/drive_c/windows/
cp grassgames.sh /home/pi/.screensavers/
sudo cp screensaver.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start grassgames
sudo systemctl enable grassgames

#Display screensaver after install
WINEPREFIX=~/.screensavers wine '/home/pi/.screensavers/drive_c/windows/grassgames.scr' /s

#Clear screen and print instructions
clear
echo "Reload service daemon: sudo systemctl daemon-reload"
echo "Verify service is running: sudo systemctl status grassgames"
echo "Enable on startup: sudo systemctl enable grassgames"
echo "Start 3dpipes service: sudo systemctl start grassgames"
echo "Stop 3dpipes service: sudo systemctl stop grassgames"