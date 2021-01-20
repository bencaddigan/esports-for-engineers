#!/bin/bash

# install (if necessary) and run wBridge5 Contract Bridge program
# wBridge5 web site: http://www.wbridge5.com/
# this linux script file is from https://github.com/bencaddigan/esports-for-engineers
# for best quality graphics and speed, run the linux version of bcalc
# on Ubuntu 20.04 LTS
# this requires issuing the following command:
# sudo apt install -y wine 
#
# 30 May 2020

$PWD/INSTALL/checkWineVersion.sh 2>/dev/null 1>/dev/null
if [ $? -ne 0 ]; then
	exit 1
fi

export WINEPREFIX="$PWD/WP"

if [ -d "$WINEPREFIX/drive_c/wbridge5" ]
then
   # wBridge5 is already installed
   wine "$WINEPREFIX/drive_c/wbridge5/Wbridge5.exe" 2>/dev/null 1>/dev/null
   clear
   cat "$WINEPREFIX/../DOC/REFERENCE/exitMessageWbridge5.txt"
   echo ""; echo ""
   exit 0
else 
   # install wBridge5 for the first time, make sure Windows XP emulation is selected in winecfg
   # otherwise the File/save and File/open commands won't work
   clear
   echo "Installing Wbridge5 for the first time; simply accept all defaults."
   wine "$WINEPREFIX/../INSTALL/Wbridge5_setup.exe" 2>/dev/null 1>/dev/null
   clear
   cat "$WINEPREFIX/../DOC/REFERENCE/exitMessageWbridge5.txt"
   echo ""; echo ""   
   exit 0
fi
