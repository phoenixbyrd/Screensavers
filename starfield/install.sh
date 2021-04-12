#!/bin/bash
#Install screensaver
WINEARCH=win32 WINEPREFIX=/home/pi/.starfield winecfg
WINEPREFIX=~/.starfield wine starfield.exe
cp starfield.sh /home/pi/.starfield/
sudo cp starfield.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start starfield
sudo systemctl enable starfield

#Display screensaver after install
WINEPREFIX=~/.starfield wine '/home/pi/.starfield/drive_c/Program Files/Starfield Screensaver/Starfield.scr' /s

#Clear screen and print instructions
clear
echo "Reload service daemon: sudo systemctl daemon-reload"
echo "Verify service is running: sudo systemctl status starfield"
echo "Enable on startup: sudo systemctl enable starfield"
echo "Start 3dpipes service: sudo systemctl start starfield"
echo "Stop 3dpipes service: sudo systemctl stop starfield"