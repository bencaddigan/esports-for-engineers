# for Ubuntu 20.04 LTS install
# recommended packages to install for eSports for Engineers version 4.0 


# to install libraries needed by some of the esports for engineers games, as well as recommended utilities:

# the following command will take about 20 minutes to execute on a mid-range PC.
clear
echo "#Installing Ubuntu libraries needed by esports-for-engineers-v40"; echo " "
echo "#copy and paste the following command in a terminal window:"; echo " "
echo "sudo apt install -y wine-development winetricks vim okular liblua5.2-dev libqt5widgets5 scid stockfish xboard phalanx libopenblas-dev nvidia-opencl-dev libopenblas-dev libzip5 libboost-filesystem-dev libqt5multimedia5 libqt5sql5 gnugo kigo python3-pip python3-pandas"
echo " "; echo "#Additional install steps needed:"; echo " "
echo "# Install the winehq-staging version of wine"
echo "# by copy/pasting the following commands one by one into a terminal window"
echo "(reference: https://wiki.winehq.org/Ubuntu)"; echo " "

echo "sudo dpkg --add-architecture i386"
echo "wget -nc https://dl.winehq.org/wine-builds/winehq.key"
echo "sudo apt-key add winehq.key"
echo "sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'"
echo "sudo apt update"
echo "sudo apt install --install-recommends winehq-staging"; echo " "
echo "# To install the open source flightgear flight simulator used in THUR and SAT,"
echo "# use these commands (see installationInstructions.txt):"
echo ""
echo "sudo add-apt-repository ppa:saiarcot895/flightgear"
echo "sudo apt-get update"
echo "sudo apt install -y flightgear"
echo " "
echo "#now start flightgear via"

echo "fgfs --launcher"

echo "#select "Aircraft" on the left menu"

echo "#select "Browse" at top center"

echo "#Select "Add default hanger" at top right"

echo "#(if flightgear crashes, simply restart it via "fgfs --launcher", then navigate back "
echo "#to where you were by selecting Aircraft, then Browse)"

echo "#You will now see a grid of more than 500 add-on aircraft.  Using"
echo "#the search box at top right, find and install the following"
echo "#six aircraft:"

echo "# 1. Supermarine Spitfire MkVb"
echo "# 2. Messerschmitt BF-109 G14"
echo "# 3. MiG-15bis"
echo "# 4. F-86F Sabre"
echo "# 5. General Dynamics F-16CJ Block 52"
echo "# 6. Mikoyan-Gurevich MiG-21bis JSBSim"


#
# general purpose
# wine vim okular
#
# MON
# bcalc:
# liblua5.2-dev libqt5widgets5
#
# TUE
# none
#
# WED
# scid:
# scid stockfish 
# optional:
# xboard phalanx
# nibbler:
# libopenblas-dev
# if using nvidia graphics card
# nvidia-opencl-dev
#
# THU
# Mig Alley:
# none
# optional, if playing Battle of Britain
# need to install a more recent version of wine as follows:
# wine 5.21 (Staging) or later is required to run Battle of Britain.
# install winehq-staging as described at this link: https://wiki.winehq.org/Ubuntu"
# For ubuntu 20.04, the commands are"
# sudo dpkg --add-architecture i386"
# wget -nc https://dl.winehq.org/wine-builds/winehq.key"
# sudo apt-key add winehq.key"
# sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'"
# sudo apt update"
# sudo apt install --install-recommends winehq-staging"
# note: every time you start a script for the first time with wine 5.21 (Staging)
# you will be asked whether you want to install mono and Gecko.
# for Battle of Britain, you need to install Gecko in order to use online help.
# for other games, save time by not installing Gecko, as you won't need it.
# always select "Cancel" when asked if you want to install mono - none of the
# games require mono, and it take a while to load.
#
# FRI
# katago, used by sabaki, q5go:
# libopenblas-dev libzip5 libboost-filesystem-dev
# q5go:
# libqt5multimedia5 libqt5sql5 gnugo
# optional:
# kigo python3-pip
# note you can install the latest version of KaTrain via the commands
# pip3 install katrain
# this installs katrain in ./local/bin, so you need to add that to your path:
# export PATH=$HOME/local/bin:$PATH
#
#SAT
# none
#
# useful for developing new content and documentation
# libreoffice gwenview gimp kompare winetricks vlc

# if 
# sudo lsmod | grep nouveau
# returns any output, then you are using the slow nouveau generic graphics driver.
# upgrade to a faster driver for your graphics card as follows:

# sudo ubuntu-drivers devices
# sudo ubuntu-drivers autoinstall
# reboot
# the following command should return no output, confirming that you
# are no longer using the generic nouveau graphics driver
# sudo lsmod | grep nouveau

# You need to complete two more steps manually to complete the installation.
# These steps are - install the winehq-staging version of wine, which
# is needed by the THU/Battle of Britain sim, and install 
# the flightgear open source flight simulation and add 6 additional
# aircraft.  See installationInstructions.txt for detailed instructions
# on how to complete these last two steps.

# at any time you can check which version of wine you're using via
# wine --version
# if the result of this command is "wine-5.5", you're using
# wine-development, which is what you
# need for all games except THU/Battle of Britain.
# if the results is a later version of wine, you're using winehq-staging

