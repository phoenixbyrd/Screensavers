To Install:

chmod +x install.sh
./install.sh

When winecfg.exe window shows set Windows Version to Windows XP, click apply and then OK

Commands to controll the fireplace screensaver service

Reload service daemon     : sudo systemctl daemon-reload
Verify service is running : sudo systemctl status fireplace
Enable on startup         : sudo systemctl enable fireplace
Start 3dpipes service     : sudo systemctl start fireplace
Stop 3dpipes service      : sudo systemctl stop fireplace