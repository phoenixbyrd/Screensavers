#!/bin/bash

#Setup wine prefix
dir=/home/pi/.screensavers
if [[ ! -e $dir ]]; then
	WINEARCH=win32 WINEPREFIX=/home/pi/.screensavers winecfg	
fi

#Install screensaver
cp StickMen.scr /home/pi/.screensavers/drive_c/windows/system32
cp StickMenSound.exe /home/pi/.screensavers/drive_c/windows/system32
cp stickmen.sh /home/pi/.screensavers/
sudo cp screensaver.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start stickmen
sudo systemctl enable stickmen

#Display screensaver after install
WINEPREFIX=~/.screensavers wine '/home/pi/.screensavers/drive_c/windows/system32/StickMen.scr' /s

#Clear screen and print instructions
clear
echo "Reload service daemon: sudo systemctl daemon-reload"
echo "Verify service is running: sudo systemctl status screensaver"
echo "Enable on startup: sudo systemctl enable screensaver"
echo "Start stickmen service: sudo systemctl start screensaver"
echo "Stop stickmen service: sudo systemctl stop screensaver"