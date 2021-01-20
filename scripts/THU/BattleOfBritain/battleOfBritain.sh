#!/bin/bash

$PWD/INSTALL/checkWineVersionStaging.sh
if [ $? -ne 0 ]; then
        exit 1
fi

export WINEPREFIX=$PWD/WP
export BoB_INSTALL=$PWD/INSTALL

if [ -f "$WINEPREFIX/drive_c/Program Files (x86)/Rowan Software/Battle Of Britain/bob.exe" ]; then
    cd "$WINEPREFIX/drive_c/Program Files (x86)/Rowan Software/Battle Of Britain/" 
    wine bob.exe 2>/dev/null 1>/dev/null
    exit 0
fi

numMonitors=$(eval "xrandr -q | grep connected | grep -v disconnected | wc -l")

if [ $numMonitors -ne 2 ]; then
	echo " "
	echo "To avoid graphics glitches, a dual monitor setup is recommended for Battle of Britain."
	echo " "; echo "$numMonitors monitor(s) detected."; echo " "
	echo "If using 1 monitor, run ./setWineDisplayResolution.sh, select the graphics"
	echo "tab, and enable virtual desktop, using your maximum monitor resolution."
	echo "this will cause many campaign screen 2D icons to disappear, but campaign is"
	echo "still playable.  It has the advantage of allowing 3D view at higher resolution"
	echo "than 1024x768."
        echo "To stop this script and set up dual monitors, press <CTRL> C."
	echo "To continue with your current monitor setup, press Enter"; echo " "
	read replyString
fi

if [ ! -f $BoB_INSTALL/BoB_iso/Setup.exe ]; then
    clear;
    echo "Before you can install Battle of Britain, you must mount the Battle of Britain iso."
    echo " "
    echo "Mount the Battle of Britain CD-ROM iso using this command:"
    echo " "; echo "sudo mount -o loop $PWD/INSTALL/BATTLEOFBRITAIN.iso $PWD/INSTALL/BoB_iso"; echo " "
    echo "Then run this script again."
    exit 1
fi

# in Wine configuration Graphics tab unselect Allow the window manager to decoration the windows
clear; 
echo "In the Wine configuration dialog box, which appears next, select the 'Graphics' tab."
echo "In the Graphics tab,  unselect 'Allow the window manager to decorate the windows'" 
echo "Then select OK to continue the installation."; echo " "
echo "Press enter to display the Wine configuration dialog box."
read replyString

winecfg 2>/dev/null 1>/dev/null

echo " "; echo "Setting resolution on monitors to maximum resolution to avoid Battle of Britain graphics problems";
./delayedMonitorReset.sh 0

wine  $BoB_INSTALL/BoB_iso/Setup.exe 2>/dev/null 1>/dev/null

echo "When Battle of Britain starts, select PC CONFIG and set graphics resolutions to 1024x768."
echo "Set all other graphics options to maximum values."
echo " "
cd $BoB_INSTALL/RR\ ROWANBOB\ GRAPHICS\ MOD/
echo " "; echo "applying patch 1 of 3"; echo " "
wine bob_v098.exe 2>/dev/null 1>/dev/null
echo " "; echo "applying patch 2 of 3"; echo " "
wine bob_v099.exe 2>/dev/null 1>/dev/null
echo " "; echo "applying patch 3 of 3"; echo " "
# copy graphics patch to BoB folder
rsync -a bobMain/ "$WINEPREFIX/drive_c/Program Files (x86)/Rowan Software/Battle Of Britain/"
cd "$WINEPREFIX/drive_c/Program Files (x86)/Rowan Software/Battle Of Britain"
wine bob.exe 2>/dev/null 1>/dev/null


