#!/bin/bash

# learn cockpit instruments, practice takeoff and landing in a German ME 109G

if [ ! -f /usr/games/fgfs ]; then
	echo " "
	echo "The flightgear open source flight simulator is not installed."
	echo "See ../../installtionInstructions.txt for installation steps,"
	echo "then run this script again."
	exit 1
fi
# set the aircraft to bf106g
# set time to noon on June 1, 2020 at the user's location

echo " "; echo "For landing help select View/Toggle Glide Slope Tunnel"; echo " ";
echo "study the cockpit instruments and practice take off and landing."
echo " "; echo "For help on this aircraft, see:"
echo "Help/Aircraft Help"
echo "Help/Tutorials"
echo "Bf-109"; echo " "
echo "Note that in Battle of Britain you will be flying an earlier version of"
echo "this aircraft."

fgfs --start-date-sys=2020:06:01:12:00:00 --aircraft=bf109g 2>/dev/null 1>/dev/null

