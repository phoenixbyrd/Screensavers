To Install:

chmod +x install.sh
./install.sh

When winecfg.exe window shows set Windows Version to Windows XP, click apply and then OK
After System47 lcars screensaver is installed click the [x] button to close and finish the install process. 

Commands to controll the screensaver service

Reload service daemon     : sudo systemctl daemon-screensaver
Verify service is running : sudo systemctl status screensaver
Enable on startup         : sudo systemctl enable screensaver
Start lcars service     : sudo systemctl start screensaver
Stop lcars service      : sudo systemctl stop screensaver