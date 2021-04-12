To Install:

chmod +x install.sh
./install.sh

When winecfg.exe window shows set Windows Version to Windows XP, click apply and then OK

Commands to controll the grassgames screensaver service

Reload service daemon     : sudo systemctl daemon-reload
Verify service is running : sudo systemctl status grassgames
Enable on startup         : sudo systemctl enable grassgames
Start grassgames service     : sudo systemctl start grassgames
Stop grassgames service      : sudo systemctl stop grassgames