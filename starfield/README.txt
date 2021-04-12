To Install:

chmod +x install.sh
./install.sh

When winecfg.exe window shows set Windows Version to Windows XP, click apply and then OK
After starfield screensaver has installed you can play with the starfield settings and preview changes. 
Click [OK] once you are done to finish the install process.


Commands to controll the starfield screensaver service

Reload service daemon     : sudo systemctl daemon-reload
Verify service is running : sudo systemctl status starfield
Enable on startup         : sudo systemctl enable starfield
Start 3dpipes service     : sudo systemctl start starfield
Stop 3dpipes service      : sudo systemctl stop starfield