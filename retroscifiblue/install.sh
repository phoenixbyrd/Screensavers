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
cp /home/pi/Screensavers/retroscifiblue/RetroSciFi_Blue.scr /home/pi/.screensavers/drive_c/windows/
cp /home/pi/Screensavers/retroscifiblue/Msvbvm60.dll /home/pi/.screensavers/drive_c/windows/
cp /home/pi/Screensavers/retroscifiblue/screensaver.sh /home/pi/.screensavers/
chmod +x /home/pi/.screensavers/screensaver.sh
cp /home/pi/Screensavers/retroscifiblue/*.TTF /home/pi/.screensavers/drive_c/windows/Fonts
sudo cp /home/pi/Screensavers/retroscifiblue/screensaver.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start screensaver
sudo systemctl enable screensaver

notify-send -i /home/pi/Screensavers/retroscifiblue/screenshot.png --urgency=low --app-name="" Screensaver Installed