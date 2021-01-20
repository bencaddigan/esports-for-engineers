#!/bin/bash

# learn cockpit instruments, practice takeoff and landing in a German ME 109G

if [ ! -f /usr/games/fgfs ]; then
	echo " "
	echo "The flightgear open source flight simulator is not installed."
	echo "See ../../installationInstructions.txt for installation steps,"
	echo "then run this script again."
	exit 1
fi
# set the aircraft to bf106g
# set time to noon on June 1, 2020 at the user's location

echo " "; echo "For landing help select View/Toggle Glide Slope Tunnel"; echo " ";
echo "study the cockpit instruments and practice take off and landing."
echo "Note that in Battle of Britain you will be flying an earlier version of"
echo "this aircraft."
echo " "
echo "To unpause the simulation, press p"
echo " "

fgfs --start-date-sys=2020:06:01:12:00:00 --aircraft=bf109g --fg-aircraft=$HOME/.fgfs/Aircraft/org.flightgear.fgaddon.trunk/Aircraft --in-air --altitude=10000 --vc=200 --enable-freeze 2>/dev/null 1>/dev/null

