#!/bin/bash
#Install screensaver
WINEARCH=win32 WINEPREFIX=/home/pi/.stickmen winecfg
cp StickMen.scr /home/pi/.stickmen/drive_c/windows/system32
cp StickMenSound.exe /home/pi/.stickmen/drive_c/windows/system32
cp stickmen.sh /home/pi/.stickmen/
sudo cp stickmen.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start stickmen
sudo systemctl enable stickmen

#Display screensaver after install
WINEPREFIX=~/.stickmen wine '/home/pi/.stickmen/drive_c/windows/system32/StickMen.scr' /s

#Clear screen and print instructions
clear
echo "Reload service daemon: sudo systemctl daemon-reload"
echo "Verify service is running: sudo systemctl status stickmen"
echo "Enable on startup: sudo systemctl enable stickmen"
echo "Start stickmen service: sudo systemctl start stickmen"
echo "Stop stickmen service: sudo systemctl stop stickmen"