#!/bin/bash

$PWD/INSTALL/checkWineVersion.sh 2>/dev/null 1>/dev/null
if [ $? -ne 0 ]; then
        exit 1
fi


export WINEPREFIX=$PWD/WP
cd "$WINEPREFIX/drive_c/GPLSecrets/GPL Setup Manager"
wine  'GPL Setup Manager.exe' 2>/dev/null 1>/dev/null
exit 0
