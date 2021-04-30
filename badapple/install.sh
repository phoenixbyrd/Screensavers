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
cp /home/pi/Screensavers/badapple/badapple.scr /home/pi/.screensavers/drive_c/windows/
cp /home/pi/Screensavers/badapple/screensaver.sh /home/pi/.screensavers/
sudo cp /home/pi/Screensavers/badapple/screensaver.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start screensaver
sudo systemctl enable screensaver

#Display screensaver after install
WINEPREFIX=/home/pi/.screensavers wine /home/pi/.screensavers/drive_c/windows/badapple.scr /s

notify-send -i /home/pi/Screensavers/badapple/screenshot.png --urgency=low --app-name="" Screensaver Installed