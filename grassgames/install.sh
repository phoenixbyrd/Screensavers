#!/bin/bash

#Setup wine prefix
dir="$HOME/.screensavers"
if [[ ! -e $dir ]]; then
	WINEARCH=win32 WINEPREFIX="$HOME/.screensavers" winecfg	
fi

#Stop existing screensaver.service
file=/etc/systemd/system/screensaver.service
if [[ -f $file ]]; then
	sudo systemctl stop screensaver	
fi

#Install screensaver
cp grassgames.scr "$HOME/.screensavers/drive_c/windows/"
cp screensaver.sh "$HOME/.screensavers/"
sudo cp screensaver.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start screensaver
sudo systemctl enable screensaver

#Display screensaver after install
WINEPREFIX="$HOME/.screensavers" wine "$HOME/.screensavers/drive_c/windows/grassgames.scr" /s

#Clear screen and print instructions
clear
echo "Reload service daemon      : sudo systemctl daemon-reload"
echo "Verify service is running  : sudo systemctl status screensaver"
echo "Enable on startup          : sudo systemctl enable screensaver"
echo "Start screensaver service  : sudo systemctl start screensaver"
echo "Stop screensaver service   : sudo systemctl stop screensaver"