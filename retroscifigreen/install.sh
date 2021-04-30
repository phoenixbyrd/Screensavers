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
cp /home/pi/Screensavers/retroscifigreen/RetroSciFi.scr /home/pi/.screensavers/drive_c/windows/
cp /home/pi/Screensavers/retroscifigreen/Msvbvm60.dll /home/pi/.screensavers/drive_c/windows/
cp /home/pi/Screensavers/retroscifigreen/screensaver.sh /home/pi/.screensavers/
chmod +x /home/pi/.screensavers/screensaver.sh
cp /home/pi/Screensavers/retroscifigreen/*.TTF /home/pi/.screensavers/drive_c/windows/Fonts
sudo cp /home/pi/Screensavers/retroscifigreen/screensaver.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start screensaver
sudo systemctl enable screensaver

#Display screensaver after install
#WINEPREFIX=/home/pi/.screensavers wine /home/pi/.screensavers/drive_c/windows/#RetroSciFi.scr /s

notify-send -i /home/pi/Screensavers/retroscifigreen/screenshot.png --urgency=low --app-name="" Screensaver Installed