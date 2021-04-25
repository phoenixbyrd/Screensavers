#!/bin/bash

#Setup wine prefix
dir=/home/pi/.screensavers
if [[ ! -e $dir ]]; then
	WINEARCH=win32 WINEPREFIX=/home/pi/.screensavers winecfg	
fi

#Stop existing screensaver.service
file=/etc/systemd/system/screensaver.service
if [[ -f $file ]]; then
	sudo systemctl stop screensaver	
	sudo systemctl disable screensaver	
fi

#Install screensaver
cp RetroSciFi_Blue.scr /home/pi/.screensavers/drive_c/windows/
cp Msvbvm60.dll /home/pi/.screensavers/drive_c/windows/
cp screensaver.sh /home/pi/.screensavers/
chmod +x /home/pi/.screensavers/screensaver.sh
cp ./fonts/*.TTF /home/pi/.screensavers/drive_c/windows/Fonts
sudo cp screensaver.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start screensaver
sudo systemctl enable screensaver

#Display screensaver after install
WINEPREFIX=/home/pi/.screensavers wine /home/pi/.screensavers/drive_c/windows/RetroSciFi_Blue.scr /s

#Clear screen and print instructions
clear
echo "Reload service daemon      : sudo systemctl daemon-reload"
echo "Verify service is running  : sudo systemctl status screensaver"
echo "Enable on startup          : sudo systemctl enable screensaver"
echo "Start screensaver service  : sudo systemctl start screensaver"
echo "Stop screensaver service   : sudo systemctl stop screensaver"