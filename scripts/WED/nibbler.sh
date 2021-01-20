#!/bin/bash

$PWD/INSTALL/checkWineVersion.sh 2>/dev/null 1>/dev/null
if [ $? -ne 0 ]; then
        exit 1
fi


clear
echo "The first time you run the default leela chess zero front end, which is named nibbler,"
echo "you must specify the path to the lc0 chess engine. " 
echo " "; echo "If the error message out of sync appears, simply restart nibbler."; echo " "


export WINEPREFIX="$PWD/WP"
#cd "$WINEPREFIX/../INSTALL/nibbler-1.5.4-linux"
# simple BASH approximation to TRY/CATCH per
# https://stackoverflow.com/questions/22009364/is-there-a-try-catch-command-in-bash
# run the linux version of nibbler if it works, if not run the windows version under wine
cd "$WINEPREFIX/../INSTALL/"

./lc0_cpu --help 2>/dev/null 1>/dev/null

returnCode=$?

# if libopenblas-dev or equivalent has been installed, then lc0_cpu is working, the return code is 0
# and the linux nibbler binary with linux lc0_cpu will work
# otherwise, run the windows version, which has (slightly) fuzzier graphics

if [ $returnCode -eq 0 ]; then
	echo "from the menu select Engine/Choose Engine"
	echo 'select (path)/WED/INSTALL/lc0_cpu'
	echo 'once you have selected lc0_cpu once, nibbler stores its location in ~/.config/Nibbler'
	echo 'so you do not have to enter this path again.'
	echo 'Optional: If you have a modern Nvidia GPU, you can run a faster version of lc0.'
	echo 'Optional: To do this in Ubuntu 20.04 LTS, first issue the command'
	echo 'Optional: sudo apt install -y nvidia-opencl-dev'
	echo 'Optional: then in the nibbler Engine/Choose Engine menu select'
	echo 'Optional: (path/WED/INSTALL/lc0_linux_graphicsAcceleration/lc0_opencl'
	echo 'If in doubt, start with the default lc0_cpu option as described above.'
	./nibbler-1.5.4-linux/nibbler 2>/dev/null 1>/dev/null

else
	echo "from the menu select Engine/Choose Engine"
	echo 'select $WINEPREFIX/drive_c/lc0_win/lc0.exe'
	echo "if you are running wine Nibbler for the first time"
wine "$WINEPREFIX/../INSTALL/nibbler-1.5.4-windows/nibbler.exe" 2>/dev/null 1>/dev/null
fi

#exit 0
