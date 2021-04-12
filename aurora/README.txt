To Install:

chmod +x install.sh
./install.sh

When winecfg.exe window shows set Windows Version to Windows XP, click apply and then OK

Commands to controll the aurora screensaver service

Reload service daemon     : sudo systemctl daemon-reload
Verify service is running : sudo systemctl status aurora
Enable on startup         : sudo systemctl enable aurora
Start aurora service     : sudo systemctl start aurora
Stop aurora service      : sudo systemctl stop aurora