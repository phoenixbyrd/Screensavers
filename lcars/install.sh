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
if [ ! -f /home/pi/.screensavers/drive_c/windows/system32/System47.scr ]; then
	WINEPREFIX=/home/pi/.screensavers wine /home/pi/Screensavers/lcars/system47.exe
fi

cp /home/pi/Screensavers/lcars/screensaver.sh /home/pi/.screensavers/
chmod +x /home/pi/.screensavers/screensaver.sh
sudo cp /home/pi/Screensavers/lcars/screensaver.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start screensaver
sudo systemctl enable screensaver

#Display screensaver after install
WINEPREFIX=/home/pi/.screensavers wine /home/pi/.screensavers/drive_c/windows/system32/System47.scr /s

notify-send -i /home/pi/Screensavers/lcars/screenshot.png --urgency=low --app-name="" Screensaver Installed