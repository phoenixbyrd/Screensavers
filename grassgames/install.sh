#!/bin/bash
#Install screensaver
WINEARCH=win32 WINEPREFIX=/home/pi/.grassgames winecfg
cp grassgames.scr /home/pi/.grassgames/drive_c/windows/
cp grassgames.sh /home/pi/.grassgames/
sudo cp grassgames.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start grassgames
sudo systemctl enable grassgames

#Display screensaver after install
WINEPREFIX=~/.grassgames wine '/home/pi/.grassgames/drive_c/windows/grassgames.scr' /s

#Clear screen and print instructions
clear
echo "Reload service daemon: sudo systemctl daemon-reload"
echo "Verify service is running: sudo systemctl status grassgames"
echo "Enable on startup: sudo systemctl enable grassgames"
echo "Start 3dpipes service: sudo systemctl start grassgames"
echo "Stop 3dpipes service: sudo systemctl stop grassgames"