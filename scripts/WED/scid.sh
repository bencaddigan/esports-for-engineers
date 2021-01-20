#!/bin/bash

# scid chess database program which runs leela chess zero (lc0), running under linux with the windows version as a fallback
# scid web site: https://sourceforge.net/projects/scid/ 
# this linux script file is from https://github.com/bencaddigan/esports-for-engineers
# for best quality graphics and speed, run the linux version of nibbler
# on Ubuntu 20.04 this requires issuing the following command:
# sudo apt install -y wine libopenblass-dev
# the blass numerical library is used by lc0_cpu
# 30 Dec 2020

$PWD/INSTALL/checkWineVersion.sh 2>/dev/null 1>/dev/null
if [ $? -ne 0 ]; then
        exit 1
fi


clear
echo "The first time you run scid you should specify the path to the lc0 chess engine"
echo "From the menu select Tools/Analysis Engine.../New and specify the name and path for the lc0 executable"
echo "The linux version of lc0 is INSTALL/lc0_cpu"
echo "The Windows version of lc0 is INSTALL/lc0_win/lc0.exe"
echo ""


export WINEPREFIX="$PWD/WP"
cd "$WINEPREFIX/../INSTALL"
# simple BASH approximation to TRY/CATCH per
# https://stackoverflow.com/questions/22009364/is-there-a-try-catch-command-in-bash
# run the linux version of scid if it works, if not run the windows version under wine
# if scid has been installed in linux, run that.  Otherwise, run the windows version of scid
clear
scid 2>/dev/null 1>/dev/null || wine $WINEPREFIX/drive_c/Scid-4.7.0/bin/scid.exe 2>/dev/null 1>/dev/null

exit 0
