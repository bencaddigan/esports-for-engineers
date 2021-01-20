#!/bin/bash

$PWD/INSTALL/checkWineVersion.sh 2>/dev/null 1>/dev/null
if [ $? -ne 0 ]; then
        exit 1
fi


export WINEPREFIX="$PWD/WP"
cd "$WINEPREFIX/drive_c/GPLSecrets/GEM+"

clear
echo "car steering is configured for Logitech Extreme3D Pro joystick by default"
echo "if the keyboard is unresponsive, in Ubuntu 20.04 LTS press <ALT> F6 to "
echo "restore keyboard focus to the Grand Prix Legends demo window"
echo ""
wine GEMP2.exe 2>/dev/null 1>/dev/null
# print out all mod credits
cat $WINEPREFIX/../DOC/mod_documentation/*.txt
# print out all track credits
cat $WINEPREFIX/../DOC/track_documentation/*.txt

exit 0
