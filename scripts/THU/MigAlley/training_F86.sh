#!/bin/bash

# learn cockpit instruments, practice takeoff and landing in a US F-86F Sabre 

if [ ! -f /usr/games/fgfs ]; then
	echo " "
	echo "The flightgear open source flight simulator is not installed."
	echo "see ../../installationInstructions.txt for installation steps,"
	echo "then run this script again."
	exit 1
fi
# set the aircraft to F-86F
# set time to noon on June 1, 2020 at the user's location

echo " "; echo "For landing help select View/Toggle Glide Slope Tunnel"; echo " ";
echo "study the cockpit instruments and practice take off and landing."
echo " "; echo "For help on this aircraft, see:"
echo "Help/Aircraft Help"
echo "Sabre"; echo " "

fgfs --start-date-sys=2020:06:01:12:00:00 --aircraft=F-86F 2>/dev/null 1>/dev/null

