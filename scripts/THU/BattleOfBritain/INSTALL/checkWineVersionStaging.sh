#!/bin/bash
# check for correct wine version
# called from scripts that launch wine applications

if [ ! -f /usr/bin/wine ]; then
	echo " "; echo "ERROR: wine not found. If using Ubuntu 20.04 LTS install it via:"
	echo "sudo apt install --install-recommends winehq-staging"; echo " "
	exit 1
fi

if wine --version | grep "wine-5.5"; then

echo " "; echo "WARNING: wrong version of wine detected.  You are using the"
eval wine --version
echo "version instead of the recommended winehq-staging version." 
echo "Battle of Britain does not work with versions of wine less than wine-5.22."
echo "To install winehq-staging using Ubuntu 20.04 LTS use this command:"
echo "sudo apt install --install-recommends winehq-staging"; echo " "

echo "press CTRL C to exit and install the recommended version of wine, or ENTER to continue"
read replyString
exit 0 

fi

exit 0
