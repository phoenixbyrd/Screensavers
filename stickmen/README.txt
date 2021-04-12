To Install:

chmod +x install.sh
./install.sh

When winecfg.exe window shows set Windows Version to Windows XP, click apply and then OK

Commands to controll the lcars screensaver service

Reload service daemon     : sudo systemctl daemon-reload
Verify service is running : sudo systemctl status stickmen
Enable on startup         : sudo systemctl enable stickmen
Start stickmen service     : sudo systemctl start stickmen
Stop stickmen service      : sudo systemctl stop stickmen