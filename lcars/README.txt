To Install:

chmod +x install.sh
./install.sh

When winecfg.exe window shows set Windows Version to Windows XP, click apply and then OK
After System47 lcars screensaver is installed click the [x] button to close and finish the install process. 

Commands to controll the lcars screensaver service

Reload service daemon     : sudo systemctl daemon-reload
Verify service is running : sudo systemctl status lcars
Enable on startup         : sudo systemctl enable lcars
Start lcars service     : sudo systemctl start lcars
Stop lcars service      : sudo systemctl stop lcars