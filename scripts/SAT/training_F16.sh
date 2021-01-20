#!/bin/bash

# learn cockpit instruments, practice takeoff and landing in a US F16

if [ ! -f /usr/games/fgfs ]; then
	echo " "
	echo "The flightgear open source flight simulator is not installed."
	echo "See ../../installationInstructions.txt for installation steps,"
	echo "then run this script again."
	exit 1
fi
# set the aircraft to f16
# set time to noon on June 1, 2020 at the user's location

echo " "; echo "For landing help select View/Toggle Glide Slope Tunnel"; echo " ";
echo "study the cockpit instruments and practice take off and landing."
echo " "; echo "For help on this aircraft, see:"
echo "Help/Aircraft Help"
echo "Help/Aircraft Checklists"
echo "Help/Tutorials"
echo "F-16CJ Block 52"; echo " "


fgfs --start-date-sys=2020:06:01:12:00:00 --aircraft=f16-block-52 2>/dev/null 1>/dev/null

