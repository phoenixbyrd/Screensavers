#!/bin/bash

#Setup wine prefix
dir=/home/pi/.screensavers
if [[ ! -e $dir ]]; then
	WINEARCH=win32 WINEPREFIX=/home/pi/.screensavers winecfg	
fi

#Install screensaver
cp tropicfish.scr /home/pi/.screensavers/drive_c/windows/
cp tropicfish.sh /home/pi/.screensavers/
sudo cp tropicfish.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start tropicfish
sudo systemctl enable tropicfish

#Display screensaver after install
WINEPREFIX=~/.screensavers wine '/home/pi/.screensavers/drive_c/windows/tropicfish.scr' /s

#Clear screen and print instructions
clear
echo "Reload service daemon: sudo systemctl daemon-reload"
echo "Verify service is running: sudo systemctl status tropicfish"
echo "Enable on startup: sudo systemctl enable tropicfish"
echo "Start 3dpipes service: sudo systemctl start tropicfish"
echo "Stop 3dpipes service: sudo systemctl stop tropicfish"