To Install:

chmod +x install.sh
./install.sh

When winecfg.exe window shows set Windows Version to Windows XP, click apply and then OK
After starfield screensaver has installed you can play with the starfield settings and preview changes. 
Click [OK] once you are done to finish the install process.


Commands to controll the screensaver service

Reload service daemon     : sudo systemctl daemon-reload
Verify service is running : sudo systemctl status screensaver
Enable on startup         : sudo systemctl enable screensaver
Start starfield service     : sudo systemctl start screensaver
Stop starfield service      : sudo systemctl stop screensaver