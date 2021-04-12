To Install:

chmod +x install.sh
./install.sh

When winecfg.exe window shows set Windows Version to Windows XP, click apply and then OK

Commands to controll the 3dpipes screensaver service

Reload service daemon     : sudo systemctl daemon-reload
Verify service is running : sudo systemctl status 3dpipes
Enable on startup         : sudo systemctl enable 3dpipes
Start 3dpipes service     : sudo systemctl start 3dpipes
Stop 3dpipes service      : sudo systemctl stop 3dpipes