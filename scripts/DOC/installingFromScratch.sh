What follows is command line history showing the steps to 
manually install the esports-for-engineers-v30 games on linux

lsmod | grep nvidea
# check that correct graphics drivers are installed
lsmod | grep nvidia
# check that generic graphics drivers (too slow for 3D simulation games) are not installed
lsmod | grep nouveau
# install library needed for the linux Leela Chess Zero binary lc0_cpu in WED
sudo apt install -y libopenblas-dev
 don't select windows version of lc0.exe if using linux nibbler, otherwise need to delete ~/.config/Nibbler and 
# start again!
# loading Ubuntu 20.04 LTS libaries needed by KataGo
sudo apt-cache search libzip
sudo apt install -y libzip5
sudo apt-cache search boost | grep filesys
sudo apt install -y libboost-filesystem-dev
# cd to katago directory
# ./katago -genconfig
# specify an additional limit to make KataGo move much faster: 10 seconds
# otherwise defaults
# note 6block.bin.gz is copied to default_model.bin.gz, which is used here
# katago command is <path>/katago gtp -config 'gtp.cfg'
history
 katago files in ~/.katago
sudo apt install -y gnugo
# sabaki files saved in ~/.config/Sabaki
# installing Free Falcon
# do NOT launch freefalcon config editor
# FF6 writes bitmaps to ~/.local/share/icons/hicolor
# desktop icons to ~/.local/share/applications/wine/Programs/FreeFalcon6
# linux desktop icons to ~/Desktop/
# linux system menu icons to ~/.config/menus/applications-merged/
# now install BMS 4 in SUN
xport WINEPREFIX=$PWD
cd ..
winecfg
# install .NET 4.0 for Weapon Delivery Planner
winetricks
ls
cp -R WP bms433
cd bms433/
# installed vc2012 for Weapon Delivery Planner
ls
cd WP
ls
cd ..
ls
ls wdp/
vim BMS4_33_U5_linux_install.txt 
ls
cd WP
export WINEPREFIX=$PWD
cd ..
ls
winecfg
ls
vim BMS4_33_U5_linux_install.txt 
ls
# mount Falcon 4 CD image (this commercial program is a dependency of BMS 4)
mkdir iso
sudo mount -o loop falcon4Cd.iso iso/
cd iso/
ls
wine Setup.exe 
cd ..
ls
mkdir tmp
cp -R WP tmp
# backing up WP
time tar xzf bms433BaseInstall.tar.gz 
ls
cd baseInstall/
ls
more ../BMS4_33_U5_linux_install.txt 
ls
unzip Falcon_BMS_4.33_U1_Setup.zip -d $WINEPREFIX/drive_c
cd Falcon\ BMS\ 4.33\ U1\ Setup/
ls
wine Setup.exe 
# this creates the initial BMS 4.33; now apply the 3 patches
cd ..
ls
# click through the installation screens, selecting only defaults
wine Falcon_BMS_4.33_U2_Incremental.exe
wine Falcon_BMS_4.33_U3_Incremental.exe
wine Falcon_BMS_4.33_U4_Incremental.exe
wine Falcon_BMS_4.33_U5_Incremental.exe
ls
cd ..
ls
ls tmp
cd ..
cd bms433/
mv tmp wpWithDotNet40AndVC2012noBMSYet
ls
wine Falcon_BMS_4.33_U5_Incremental.exe
cd baseInstall/
ls
wine Falcon_BMS_4.33_U5_Incremental.exe
echo $WINEPREFIX
# unzip with -d
# set up joystick
# advanced/rudder and throttle
cd ..
ls
cp -R WP WPwithBMS433Installed
ls
cd wdp/
ls
vim Readme.txt 
wine setup.exe 
ls
cd ..
ls
cd WP
ls
cd drive_c/
ls
cd Weapon\ Delivery\ Planner/
ls
wine WeaponDeliveryPlanner.exe 
cd Edmonton/
ls
wine TrackInstall.exe 
cd ..
ls
cd midOCA71/
ls
wine midOCA71.exe 
vim Mirror\ Zone.txt 
vim ReadMe.txt 
cd..
ls
cd ..
ls
cd Riverside_71_GPL_v1.0/
ls
wine Riverside_71_GPL_v1.0.exe 
cd ..
ls
cd Road_America__1995__Wisconsin_Gran_Prix__GPL_/
ls
cd 'Road America  1995  Wisconsin Gran Prix (GPL)'
ls
wine TrackInstall.exe 
ls
cd ..
ls
cd 'Road America graphics update'
ls
pwd
cd ..
ls
rsync -a 'Road America graphics update/' "/home/main/esports-for-engineers_3_0/GrandPrixLegendsDemo/WP/drive_c/Program Files (x86)/GPL 2004 DEMO/tracks/elkhart/"
cd ..
ls
wine RoadAtlantaInstaller.EXE 
cd ..
ls
cd ..
ls
cd mods/
ls
cd CA71/
ls
wine CA71_1.0.exe 
ls
cd ..
ls
cd 68
ls
cd tmp/
ls
rsync -a GPL/ "/home/main/200525/GPLD/WP/drive_c/Program Files (x86)/GPL 2004 DEMO/"
cd ..
ls
cd 68\ Mod\ Gem\ Plus\ Pics/
ls
cp * "/home/main/200525/GPLD/WP/drive_c/GPLSecrets/GEM+/Pictures"
cd ../..
ls
cd 69X/
ls
cd 69mod_Xtra_for_Grand_Prix_Legends/
ls
rsync -a GPL/ "/home/main/200525/GPLD/WP/drive_c/Program Files (x86)/GPL 2004 DEMO/"
ls
export WINEPREFIX="/home/main/200525/GPLD/WP"
wine GPL_goodwd65_v1.0.exe 
cd ../replay\ analyzer/
ls
wine install.exe 
export WINEPREFIX="/home/main/200525/GPLD/WP"
ls
wine GEMP2.exe 
export WINEPREFIX="/home/main/200525/GPLD/WP"
ls
wine GPL\ Setup\ Manager.exe 
cd 200525
ls
cd GPLD/
ls
cd WP
history > ~/200525history.txt
export WINEPREFIX="$PWD"
cd ..
ls
cd WP
pwd
ls
./gpl_setup_manager.sh 
./gpl_replay.sh 
find . -print | grep rpy
ls
./gpl_setup_manager.sh 
ls *.ini
./gpl_setup_manager.sh 
cd
ls
mkdir 200526
cd 200526
ls
pwd
ls
ls *.ini
vim Setup.ini 
time tar czf esports-for-engineers_3_checkpoint_200526_11_27.tar.gz esports-for-engineers_3_0/
ls
vim setWineDisplayResolution.sh 
vim setDesktopResolution_gpl-demo.sh 
vim gpl_setup_manager.sh 
./gpl_setup_manager.sh 
vim gpl_setup_manager.sh 
./gpl_setup_manager.sh 
ls
vim gpl_replay.sh 
./gpl_replay.sh 
ls
vim gpl-demo.sh 
./gpl-demo.sh 
vim gpl_ai_default.sh 
ls
vim gpl_ai_default.sh 
ls
vim gpl_ai_60fpsv2newmod.sh
ls
vim gpl_ai_default.sh 
vim gpl_ai_60fpsaiv1.sh 
ls
cat *.sh | grep HOME
cat *.sh | grep PWD
cd match_AI_to_frame_rate/
ls
vim gpl_ai_60fpsaiv1.sh
vim help.sh 
ls
rm gpl*.sh
mv ../gpl_ai_*.sh .
ls
vim gpl_ai_60fpsaiv1.sh 
echo "$PWD/../WP"
cd /home/main/200525/GPLD/match_AI_to_frame_rate/../WP
cd..
cd ..
d match_AI_to_frame_rate/
cd match_AI_to_frame_rate/
ls
vim gpl_ai_60fpsaiv1.sh 
vim gpl_ai_60fpsv2newmod.sh 
vim gpl_ai_default.sh 
cat gpl_ai_default.sh 
ls
./gpl_ai_60fpsv2newmod.sh
./gpl_ai_default.sh
./gpl_ai_60fpsaiv1.sh 
./gpl_ai_default.sh
cd ..
ls
cd match_AI_to_frame_rate/
ls
./gpl_ai_60fpsaiv1.sh
./gpl_ai_default.sh 
cd ..
echo $WINEPREFIX
export WINEPREFIX="$PWD/WP"
LS
ls
./gpl_setup_manager.sh 
cd WP/
ls
cd drive_c/
ls
find . -print | grep 91 
find . -print | grep 91 | grep xml
cd ../..
ls
./gpl-demo.sh 
ls
./setWineDisplayResolution.sh 
./gpl-demo.sh 
ls
cd GrandPrixLegendsDemo/
ls
./gpl_setup_manager.sh 
ls *.ini
vim 'GPL Setup Manager Program Settings.ini'
mv 'GPL Setup Manager Program Settings.ini' 'GPL Setup Manager Program Settings.ini.bak'
find . -print | grep ini
ls
ls bak
diff gpl_ai.ini ..
cd bak/
diff gpl_ai.ini ../gpl_ai.ini
cd ..
ls
ls | grep ai
cd ../../..
cd ..
ls
./gpl-demo.sh 
ls "/home/main/200525/GPLD/WP../Documentation"
vim gpl-demo.sh 
./gpl-demo.sh 
ls "/home/main/200525/GPLD/WP/../Documentation"
cd "/home/main/200525/GPLD/WP/../Documentation"
ls
cd Additional\ Documentation/
ls
cd track_documentation/
ls
cat '/home/main/200525/GPLD/WP/../Documentation/Additional_Documentation/track_documentation/*.txt'
ls '/home/main/200525/GPLD/WP/../Documentation/Additional_Documentation/track_documentation/*.txt'
ls '/home/main/200525/GPLD/WP/../Documentation/Additional_Documentation/track_documentation/'
ls '/home/main/200525/GPLD/WP/../Documentation/Additional_Documentation/'
ls '/home/main/200525/GPLD/WP/../Documentation/'
cd ../../..
ls
vim gpl-demo.sh 
cd Documentation/
ls
mv Additional\ Documentation/ Additional_Documentation
ls
cd ..
ls
histroy
history
cat '/home/main/200525/GPLD/WP/../Documentation/Additional_Documentation/track_documentation/*.txt'
ls '/home/main/200525/GPLD/WP/../Documentation/Additional_Documentation/track_documentation/*.txt'
ls '/home/main/200525/GPLD/WP/../Documentation/Additional_Documentation/track_documentation'
ls '/home/main/200525/GPLD/WP/../Documentation/Additional_Documentation/track_documentation/*.txt'
ls '/home/main/200525/GPLD/WP/../Documentation/Additional_Documentation/track_documentation/*.*'
ls '/home/main/200525/GPLD/WP/../Documentation/Additional_Documentation/track_documentation'
cat '/home/main/200525/GPLD/WP/../Documentation/Additional_Documentation/track_documentation'
cat '/home/main/200525/GPLD/WP/../Documentation/Additional_Documentation/track_documentation/*'
ls '/home/main/200525/GPLD/WP/../Documentation/Additional_Documentation/track_documentation/'
cd '/home/main/200525/GPLD/WP/../Documentation/Additional_Documentation/track_documentation/'
cat *.txt
cd ../../..
ls
vim gpl-demo.sh 
./gpl-demo.sh 
vim gpl-demo.sh 
ls
./gpl_setup_manager.sh 
cd ../
cp -r GPLD checkpoint200526_10_29_GPLD_60fps_launcherScripts
cd WP
cd GPLD/WP
export WINEPREFIX="$PWD"
CD 
cd
c 200526
cd 200526
ls
mkdir GPLSetupManager
mv GPL\ Setup\ Manager\ v2.6.zip GPLSetupManager/
cd GPLSetupManager/
ls
unzip GPL\ Setup\ Manager\ v2.6.zip 
ls
cd GPL\ Setup\ Manager/
ls
wine 'GPL Setup Manager.exe'
ls *.txt
grep GPL 200519dirList.txt | grep etup | grep anager
grep GPL 200519dirList.txt | grep etup | grep anager | more
cd "./190531_BOW_bak/ese/Downloads"
cp "GPL Setup Manager v2.6.zip" /home/main/200526
ls
ls *.exe
ls gplc*.exe
ls gplm*.exe
ls gplx*.exe
ls gpl0*.exe
rm gplc*.exe gplm*.exe gplx*.exe gpl0*.exe
cp -R GPLD /home/main/checkpointGPLD200526_13_23
time cp -R GPLD /home/main/checkpointGPLD200526_13_23
ls
cd FreeFalcon/
ls
vim FreeFalcon.sh 
cd ..
ls
cd GPLD/
ls
./gpl-demo.sh 
ls
./gpl-demo.sh 
cd //
cd
ls
mv esports-for-engineers_3_0 oldese3_ch200526_16_12
time tar xzf esports-for-engineers_3_checkpoint_200526_11_27.tar.gz
./sabaki-v0.51.1-linux-x64.AppImage 
ls ~/.local/share/
ls ~/.local/share/leela-zero/
ls ~/.local/share/leela-zero/best-network 
ls -l ~/.local/share/leela-zero/best-network 
ls
diff weights.txt ~/.local/share/leela-zero/best-network
pwd
ls
sudo apt-cache search leela-zero
kompare 91.xml ../91.xml 
ls
cd ..
ls
ls options
cp backedUp91Xml/91.xml .
rm 77J.xml 
ls
cd ../../..
cd ..
./gpl-demo.sh 
./gpl-demo.sh 
ls
./gpl-demo.sh 
pwd
pqs
pwd
ls
pwd
export WINEPREFIX="/home/main/esports-for-engineers/BMS433U5/WP"
ls
wine 'Israeli Theater Uninstaller.exe'
cd ..
ls
wine UnInstall_Nordic.exe
ls
cd ..
ls
time tar czf BMS433SomaliaVietname.tar.gz BMS433U5
ls
./setDesktopResolution_bms433U5.sh
./bms433U5.sh
./gpl-demo.sh 
./gpl-demo.sh 
./setWineDisplayResolution.sh 
./gpl-demo.sh 
lsblk
ls /dev/sd*
cd Downloads/
sudo dd if=manjaro-xfce-20.0.1-200511-linux56.iso of=/dev/sdg
cd
ls
cd esports-for-engineers_3_0/
ls
mkdir WP
cd WP
export WINEPREFIX="$PWD"
cd ..
ls
wine sabaki-v0.51.1-win-x64-portable.exe 
cd ..
cd WP
export WINEPREFIX="$PWD"
cd ..
cd leela-zero-0.17-cpuonly-win64/
ls
wine leelaz.exe 
pwd
cp ~/esports-for-engineers_3_0/leelaz/weights.txt 
cp ~/esports-for-engineers_3_0/leelaz/weights.txt .
ls
wine leelaz.exe 
cp weights.txt best-network
wine leelaz.exe 
history
cd ..
ls
wine sabaki-v0.51.1-win-x64-setup.exe 
cd ..
ls
cd Chess/
ls
unzip nibbler-1.4.4-windows.zip 
ls
unzip lc0-v0.25.1-windows-cpu-openblas.zip 
ls
mkdir WP
cd WP
ls
export WINEPREFIX="$PWD"
cd ..
ls
wine lc0.exe 
ls
cp ~/esports-for-engineers_3_0/lc0/meangirl-7.pb 
cp ~/esports-for-engineers_3_0/lc0/meangirl-7.pb .
ls
wine lc0.exe 
ls WP
cd WP/drive_c/
ls
cp ../../lc0.exe .
cp ../../meangirl-7.pb .
ls
wine lc0.exe 
cp ../../libopenblas.dll .
wine lc0.exe 
wine lc0.exe --help
ls
pwd
wine lc0.exe -w /home/main/200528/install/Chess/WP/drive_c/meangirl-7.pb 
ls ../..
ls
ls ../../nibbler-1.4.4-windows
cd ../../nibbler-1.4.4-windows
wine nibbler.exe 
cd ..
ls
cd ..
ls
cd Bridge/
ls
unzip bcalc19080_win64.zip 
ls
ls platforms/
mkdir WP
cd WP/
export WINEDIR="$PWD"
ls
cd ..
wine bcalcgui.exe 
cd ..
ls
cd Bridge/
vim README.txt 
ls
top
sudo shutdown -h now
./setDesktopResolution_bms433U5.sh
./bms433U5.sh
unzip leela-zero-0.17-cpuonly-win64.zip 
pwd
ls
ls driv*.ini
pwd
ls driv*.ini
kompare driv55.ini "/home/main/esports-for-engineers/GPL-DEMO/WP/drive_c/Program Files (x86)/GPL 2004 DEMO/driv55.ini"
kompare driver.ini "/home/main/esports-for-engineers/GPL-DEMO/WP/drive_c/Program Files (x86)/GPL 2004 DEMO/driver.ini"
kompare driv65.ini "/home/main/esports-for-engineers/GPL-DEMO/WP/drive_c/Program Files (x86)/GPL 2004 DEMO/drive65.ini"
kompare driv65.ini "/home/main/esports-for-engineers/GPL-DEMO/WP/drive_c/Program Files (x86)/GPL 2004 DEMO/driv65.ini"
vim installFileDownloadLinks.txt
vim draftIntro.txt
pwd
vim installFileDownloadLink.txt
locate FF6
locate FF6 | grep 7z
locate BMS433 | grep 7z
locate BMS433 | grep rar
ls
grep BMS433 200405dirList.txt | grep rar
grep BMS433 200405dirList.txt | grep 7z
grep BMS433 200405dirList.txt 
time find . -print > 200529dirList.txt
grep BMS433 200529dirList.txt 
locate cam
locate Ian
locate Ian | grep ZIP
replayLink.txt
vim replayLink.txt
ls
ls *.txt
grep BMS433 200519dirList.txt
grep BMS433 200519dirList.txt | grep -v WP
grep BMS433 200519dirList.txt | grep -v WP | grep -v Add
grep Incremental 200519dirList.txt | grep 433
vim installFileLinks.txt
export WINEPREFIX="$PWD"
cd ..
ls
wine pribpatcher.exe
ls
cd /home/main/200525/190508_GEM_files/prib/WP/drive_c/Sierra/GPL
ls
wine pribpatcher.exe 
ls
ls
time tar czf esports-for-engineers-v30.tar.gz esports-for-engineers-v30
ls
./bms433U5
./bms433U5.sh 
vim linuxWDP.txt
./wBridge5.sh 
time cp -R esports-for-engineers-v30 ../200530
cd
cd 200530
ls
cd esports-for-engineers-v30/
ls
mkdir MON
mkdir TUE
mkdir WED
mkdir THU
mkdir FRI
mkdir SAT
mkdir SUN
cd MON
ls
vim exitMessageBcalc.txt
vim exitMessageWbridge5.txt
ls
vim bcalc.sh 
ls
cp /home/main/200530/esports-for-engineers-v30/MON/*.sh .
ls
vim wBridge5.sh 
cp wBridge5.sh /home/main/200530/esports-for-engineers-v30/MON
cp bcalc.sh /home/main/200530/esports-for-engineers-v30/MON
ls
vim README.md 
cd
mkdir tmp
cd tmp/
ls
mkdir A B C
ls
cd B
mkdir B/S
cd ..
mkdir B/S
ls B
export WINEPREFIX="$PWD"
ls
cd ..
ls
wine GPL_DEMO_2013_F1Legends.exe 
pwd
ls
cd WP/
sl
ls
cd drive_c/
ls
cd SIERRA/
ls
cd gpl_demo/
ls
wine gpl.exe 
pwd
time tar czf test1.tar.gz test1
vim gplDemo2004_blurb.txt
vim GEM_readme.txt
time tar czf CH_TUE_cleanGPLandGEMInstall.tar.gz TUE
export WINEPREFIX="$PWD"
cd drive_c/
ls
cd Sierra/
ls
cd GPL/
ls
wine gpl.exe 
mkdir WP
cd WP
export WINEPREFIX="$PWD"
ls
winecfg
ls
cd ..
ls
cd WP/drive_c/
ls
mkdir Sierra
ls
cd Sierra/
ls
pwd
export WINEPREFIX="$PWD"
winecfg
wine gpl2020demo.exe 
ls
ls *.exe
wine /home/main/200530/esports-for-engineers-v30/installFiles/TUE/gpl-demo/GEMPackage_2.5.0.32.exe 
ls
cd drive_c/
ls
cd users/
ls
cd Public/
ls
cd Documents/
ls
cd GEM+/
ls
rm GEM.ini 
cd ..
ls
cd GPLSecrets/
ls
cd G
cd GEM+/
ls
wine GEMP2.exe 
cd ../../..
ls
wine gpl.exe 
pwd
ls
cd drive_c/GPLSecrets/GEM+/
ls
wine GEMP2.exe 
cd ..
pwd
cd ..
ls
rm -rf 'GPL 2020 Demo'
ls
pwd
ls
cd WP/
ls
cd drive_c/Sierra/GPL/
ls
echo $WINEPREFIX
cd ../..
cd ..
export WINEPREFIX="$PWD"
ls
cd drive_c/Sierra/GPL/
ls
vim 'License GPL 2020 Demo.txt'
ls
wine gpl.exe 
wine /home/main/200530/esports-for-engineers-v30/installFiles/TUE/gpl-demo/GEMPackage_2.5.0.32.exe 
cd ../..
ls
cd GPLSecrets/
ls
cd GEM+/
ls
wine GEMP2.exe 
cd 200530/esports-for-engineers-v30/
ls
cd installFiles/
ls
cd MON/
ls
cd ../../MON/WP
ls
export WINEPREFIX="$PWD"
cd ..
cd installFiles/MON/
ls
# MON install script start
winecfg
# set windows version emulated to Winodows XP, otherwise wBridge5 save/load does not work
# in winecfg
ls
wine Wbridge5_setup.exe 
ls
man unzip
unzip bcalc19080_win64.zip -d $WINEPREFIX
cd $WINEPREFIX
LS
ls
wine bcalcgui.exe 
cd ..
ls
mkdir LINUX
ls
cd ../installFiles/MON/
ls
# windows version of bcalc works, now install linux version too
# linux version requires these librares to be loaded in linux:
# In ubuntu 20.04, the library names are: liblua5.2-dev libqt5widgets5
man gunzip
push
pwd
ls
cp bcalc19080_linux_x86-64.tar.gz "$WINEPREFIX/../LINUX"
cd "$WINEPREFIX/../LINUX"
ls
gunzip bcalc19080_linux_x86-64.tar.gz 
rm bcalc19080_linux_x86-64.tar 
# oops, redo
cd ~/200530/esports-for-engineers-v30/installFiles/MON
cp bcalc19080_linux_x86-64.tar.gz "$WINEPREFIX/../LINUX"
cd "$WINEPREFIX/../LINUX"
l
ls
tar xzf bcalc19080_linux_x86-64.tar.gz 
./bcalcgui 
cd ..
ls
vim setWineDisplayResolution.sh 
vim wBridge5.sh 
ls
cp wBridge5.sh bcalc.sh
vim bcalc.sh 
vim setWineDisplayResolution.sh 
vim bcalc.sh 
vim wBridge5.sh 
vim bcalc.sh 
ls
./bcalc.sh 
vim bcalc.sh 
./bcalc.sh 
vim bcalc.sh 
./bcalc.sh 
ls
cd LINUX/
ls
mv bcalcgui bcalcguiBak
cd ..
./bcalc.sh 
vim bcalc.sh 
./bcalc.sh 
ls
vim bcalc.sh 
./bcalc.sh 
vim bcalc.sh 
./bcalc.sh 
vim wBridge5.sh 
ls
./wBridge5.sh 
ls
vim wBridge5.sh 
history
ls
mkdir INSTALL
vim wBridge5.sh 
./wBridge5.sh 
vim wBridge5.sh 
./wBridge5.sh 
ls /home/main/200530/esports-for-engineers-v30/MON/WP/drive_c/wbridge5/Wbridge5.exe
./wBridge5.sh 
vim wBridge5.sh 
./wBridge5.sh 
vim wBridge5.sh 
./wBridge5.sh 
ls
./bcalc.sh 
vim bcalc.sh 
./bcalc.sh 
ls
rm test.pbn 
ls
vim README.md
ls
cd LINUX/
ls
mv bcalcguiBak bcalcgui
cd ..
ls
./bcalc.sh 
vim bcalc.sh 
cd LINUX/
mv bcalcgui bcalcguiBak
cd ..
ls
./bcalc.sh 
vim bcalc.sh 
./bcalc.sh 
vim bcalc.sh 
./bcalc.sh 
vim bcalc.sh 
./bcalc.sh 
ls
vim README.md 
ls
cd ..
ls
cd MON/
ls
vim bcalc.sh 
ls
pwd
history > install.sh
rm install.sh 
ls
mv WP WPback
./wBridge5.sh 
vim wBridge5.sh 
ls
rm -rf WP
./wBridge5.sh 
ls
vim wBridge5.sh 
rm -rf WP
./wBridge5.sh 
ls
rm -rf WP
mv WPback/ WP
ls
pwd
vim bcalc.sh 
sudo apt-cache search wine
pwd
vim bcalc.sh 
ls
echo $WINEPREFIX
ls *.sh
vim wBridge5.sh 
ls
vim bcalc.sh 
vim wBridge5.sh 
pwd
ls
pwd
ls
pwd
cd 200530/esports-for-engineers-v30/
ls
cd MON/
ls
ls $WINEPREFIX/drive_c/wbridge5/Wbridge5.exe
echo "$WINEPREFIX/drive_c/wbridge5/Wbridge5.exe"
echo "$PWD/WP/drive_c/wbridge5/Wbridge5.exe"
ls WP/drive_c/wbridge5/Wbridge5.exe
vim wBridge5.sh 
ls
ls DOC/REFERENCE/
cd DOC/REFERENCE/
ls
vim exitMessageBcalc.txt 
cd ..
ls
cd LINUX/
ls
mv bcalcguiBak bcalcgui
mv bcalcgui bcalcguiBak
mv bcalcguiBak bcalcgui
mv bcalcgui bcalcguiBak
ls
cd ..
ls
cd installFiles/
ls
cd MON/
ls
cd scripts/
ls
cd ..
ls
cd scripts/
ls
rm
rm *
ls
cp /home/main/200530/esports-for-engineers-v30/MON/*.sh .
ls
cp /home/main/200530/esports-for-engineers-v30/MON/*.sh .
ls
mv install.sh README.md
vim README.md 
mv README.md README.txt
vim README.txt 
ls
cd ..
ls
cd ..
ls
cd ../..
ls
time tar czf c200530_15_53ew.tar.gz esports-for-engineers-v30
locate GPLGS
pwd
ls
cd esports-for-engineers-v30/
ls
cd TUE/
ls
cd ..
cd installFiles/
ls
cd T
cd TUE/
ls
# start TUE install
pwd
# starting directory esports-for-engineers-v30/installFiles/TUE
# installing GPL Demo by following 
# esports-for-engineers-v30/TUE/DOC/GPL_Easy_Installation_Guide_ENG_v2.1.pdf
ls
cd ../../TUE/WP
export WINEPREFIX="$PWD"
CD ../../installFiles/TUE/
cd ../../installFiles/TUE/
ls
cd gpl-demo/
ls
# install gpl 2004 free demo
# Important note - choose C:\Sierra|GPL as the install location!!!
# do not accept the default location Program Files(x86)\GPL DEMO 2004
# this will save you time during the install
# because most add ons use C:\Sierra\GPL as the default location.
wine gpl_2004_demo.exe 
# No need to install Wine Mono or Wine Gecko
ls
wine gplrast_v2.5.exe 
# and one final GPL demo patch ...
ls
cd GPL_67_PATCH/
ls
wine 1967_PATCH_v1.3_Setup.exe 
cd ..
ls
# now install the GEM+ launcher
wine GEMPackage_2.5.0.32.exe 
cd $WINEPREFIX
cd drive_c/
ls
cd Sierra/GPL/
ls
# per Install pdf instructions to make exports directory
mkdir exports
ls
echo $WINEPREFIX
ls
wine gpl.exe 
wine ../../GPLSecrets/GEM+/GEMP2.exe 
# delete TUE/WP/drive_c/users/Public/Documents/GEM+/GEM.ini before running GEMP+ for the first time!!!
wine ../../GPLSecrets/GEM+/GEMP2.exe 
export WINEPREFIX="$PWD"
wine gpl.exe 
winecfg
wine gpl.exe 
wine --version
wine gpl2020demo.exe 
find . -print > 200530dirList.txt
grep odt 200530dirList.txt 
libreoffice ./200523/ese30Introduction.odt
cp ./200523/ese30Introduction.odt /home/main/200530/esports-for-engineers-v30/draftIntro
grep "odt$" 200530dirList.txt 
grep "ods$" 200530dirList.txt 
grep "odp$" 200530dirList.txt 
cd 200530
ls
cd esports-for-engineers-v30/
ls
ls -lt
cd Doc/
ls
ls -lt
ls external/
cd TUE/
ls
pwd
ls
history
pwd
cd $WINEPREFIX
cd 200530/ls
cd 200530
ls
# bash script for TUE install
export WINEPREFIX="$PWD"
cd ..
# run the 3 programs that install the GPL 2004 demo
wine ../installFiles/TUE/gpl-demo/gpl_2004_demo.exe 
ls
rm -rf WP
mkdir WP
wine ../installFiles/TUE/gpl-demo/gpl_2004_demo.exe 
# to speed up installation, enter "C:\Sierra\GPL" as the installation directory for GPL demo
# this makes it easier to install car mods and tracks later, because
# the default GPL location for these other installers is C:\Sierra\GPL
# the TUE installs do not need wine Mono or wine Gecko
wine ../installFiles/TUE/gpl-demo/gplrast_v2.5.exe 
wine ../installFiles/TUE/gpl-demo/GPL_67_PATCH/1967_PATCH_v1.3_Setup.exe 
# now start gpl.exe and create your first driver name, i.e. "linux driver67"
wine WP/drive_c/Sierra/GPL/gpl.exe 
# set the name in the "Player Info" screen
# also calibrate your joystick and buttons, and select OpenGLV2 as your rasterizer
# when prompted.  Set the screen resolution to your desktop screen resolution
# the "Player Info" screen is often slow to respond here, but this will improve
# later
wine WP/drive_c/Sierra/GPL/gpl.exe 
# if the screen is unresponsive, hit <ALT> F6 if using Ubuntu linux to give the GPL window keyboard focus
# now you are ready to install the GEM+ launcher, (see GPL Easy Installation Guide pdf)
wine ../installFiles/TUE/gpl-demo/GEMPackage_2.5.0.32.exe 
# be sure to set the GPL path to C:\Sierra\GPL
# before starting GEM+, you must create the C:\Sierra\GPL\exports directory and
# delete esports-for-engineers-v30/TUE/WP/drive_c/users/Public/Documents/GEM+/GEM.ini
# if you have purchased GPL, you can use the iso file rather than the demo as follows:
ls
mkdir WP2
cd WP2
export WINEPREFIX="$PWD"
cd ..
ls
mkdir iso
sudo mount -o loop ../installFiles/TUE/notUsed/Grand\ Prix\ Legends-FR.iso iso
wine ../installFiles/TUE/notUsed/gplinstall_beta_1.08.exe 
ls
winecfg
wine WP2/drive_c/Sierra/GPL/gpl.exe 
# if you want to add tracks at this point, follow the instructions in
# ../installFiles/TUE/Doc/GPL\ 2020\ Demo\ Instructions.pdf 
# now run GEM+ for the first time
wine WP/drive_c/GPLSecrets/GEM+/GEMP2.exe 
cd WP
export WINEPREFIX="$PWD"
cd ..
wine WP/drive_c/GPLSecrets/GEM+/GEMP2.exe 
# following the instructions in ../installFiles/TUE/Doc/GPL_Easy_Installation_Guide_ENG_v2.1.pdf 
# install the tracks for each mod, then install the mod itself, then proceed to the next mod
 ./wBridge5.sh 
 time cp -R esports-for-engineers-v30 ../200530
 cd
 cd 200530
 ls
 cd esports-for-engineers-v30/
 ls
 mkdir MON
 mkdir TUE
 mkdir WED
 mkdir THU
 mkdir FRI
 mkdir SAT
 mkdir SUN
 cd MON
 ls
 vim exitMessageBcalc.txt
 vim exitMessageWbridge5.txt
 ls
 vim bcalc.sh 
 ls
 cp /home/main/200530/esports-for-engineers-v30/MON/*.sh .
 ls
 vim wBridge5.sh 
 cp wBridge5.sh /home/main/200530/esports-for-engineers-v30/MON
 cp bcalc.sh /home/main/200530/esports-for-engineers-v30/MON
 ls
 vim README.md 
 cd
 mkdir tmp
 cd tmp/
 ls
 mkdir A B C
 ls
 cd B
 mkdir B/S
 cd ..
 mkdir B/S
 ls B
 export WINEPREFIX="$PWD"
 ls
 cd ..
 ls
 wine GPL_DEMO_2013_F1Legends.exe 
 pwd
 ls
 cd WP/
 sl
 ls
 cd drive_c/
 ls
 cd SIERRA/
 ls
 cd gpl_demo/
 ls
 wine gpl.exe 
 pwd
 time tar czf test1.tar.gz test1
 vim gplDemo2004_blurb.txt
 vim GEM_readme.txt
 time tar czf CH_TUE_cleanGPLandGEMInstall.tar.gz TUE
 export WINEPREFIX="$PWD"
 cd drive_c/
 ls
 cd Sierra/
 ls
 cd GPL/
 ls
 wine gpl.exe 
 mkdir WP
 cd WP
 export WINEPREFIX="$PWD"
 ls
 winecfg
 ls
 cd ..
 ls
 cd WP/drive_c/
 ls
 mkdir Sierra
 ls
 cd Sierra/
 ls
 pwd
 export WINEPREFIX="$PWD"
 winecfg
 wine gpl2020demo.exe 
 ls
 ls *.exe
 wine /home/main/200530/esports-for-engineers-v30/installFiles/TUE/gpl-demo/GEMPackage_2.5.0.32.exe 
 ls
 cd drive_c/
 ls
 cd users/
 ls
 cd Public/
 ls
 cd Documents/
 ls
 cd GEM+/
 ls
 rm GEM.ini 
 cd ..
 ls
 cd GPLSecrets/
 ls
 cd G
 cd GEM+/
 ls
 wine GEMP2.exe 
 cd ../../..
 ls
 wine gpl.exe 
 pwd
 ls
 cd drive_c/GPLSecrets/GEM+/
 ls
 wine GEMP2.exe 
 cd ..
 pwd
 cd ..
 ls
 rm -rf 'GPL 2020 Demo'
 ls
 pwd
 ls
 cd WP/
 ls
 cd drive_c/Sierra/GPL/
 ls
 echo $WINEPREFIX
 cd ../..
 cd ..
 export WINEPREFIX="$PWD"
 ls
 cd drive_c/Sierra/GPL/
 ls
 vim 'License GPL 2020 Demo.txt'
 ls
 wine gpl.exe 
 wine /home/main/200530/esports-for-engineers-v30/installFiles/TUE/gpl-demo/GEMPackage_2.5.0.32.exe 
 cd ../..
 ls
 cd GPLSecrets/
 ls
 cd GEM+/
 ls
 wine GEMP2.exe 
 cd 200530/esports-for-engineers-v30/
 ls
 cd installFiles/
 ls
 cd MON/
 ls
 cd ../../MON/WP
 ls
 export WINEPREFIX="$PWD"
 cd ..
 cd installFiles/MON/
 ls
 # MON install script start
 winecfg
 # set windows version emulated to Winodows XP, otherwise wBridge5 save/load does not work
 # in winecfg
 ls
 wine Wbridge5_setup.exe 
 ls
 man unzip
 unzip bcalc19080_win64.zip -d $WINEPREFIX
 cd $WINEPREFIX
 LS
 ls
 wine bcalcgui.exe 
 cd ..
 ls
 mkdir LINUX
 ls
 cd ../installFiles/MON/
 ls
 # windows version of bcalc works, now install linux version too
 # linux version requires these librares to be loaded in linux:
 # In ubuntu 20.04, the library names are: liblua5.2-dev libqt5widgets5
 man gunzip
 push
 pwd
 ls
 cp bcalc19080_linux_x86-64.tar.gz "$WINEPREFIX/../LINUX"
 cd "$WINEPREFIX/../LINUX"
 ls
 gunzip bcalc19080_linux_x86-64.tar.gz 
 rm bcalc19080_linux_x86-64.tar 
 # oops, redo
 cd ~/200530/esports-for-engineers-v30/installFiles/MON
 cp bcalc19080_linux_x86-64.tar.gz "$WINEPREFIX/../LINUX"
 cd "$WINEPREFIX/../LINUX"
 l
 ls
 tar xzf bcalc19080_linux_x86-64.tar.gz 
 ./bcalcgui 
 cd ..
 ls
 vim setWineDisplayResolution.sh 
 vim wBridge5.sh 
 ls
 cp wBridge5.sh bcalc.sh
 vim bcalc.sh 
 vim setWineDisplayResolution.sh 
 vim bcalc.sh 
 vim wBridge5.sh 
 vim bcalc.sh 
 ls
 ./bcalc.sh 
 vim bcalc.sh 
 ./bcalc.sh 
 vim bcalc.sh 
 ./bcalc.sh 
 ls
 cd LINUX/
 ls
 mv bcalcgui bcalcguiBak
 cd ..
 ./bcalc.sh 
 vim bcalc.sh 
 ./bcalc.sh 
 ls
 vim bcalc.sh 
 ./bcalc.sh 
 vim bcalc.sh 
 ./bcalc.sh 
 vim wBridge5.sh 
 ls
 ./wBridge5.sh 
 ls
 vim wBridge5.sh 
 history
 ls
 mkdir INSTALL
 vim wBridge5.sh 
 ./wBridge5.sh 
 vim wBridge5.sh 
 ./wBridge5.sh 
 ls /home/main/200530/esports-for-engineers-v30/MON/WP/drive_c/wbridge5/Wbridge5.exe
 ./wBridge5.sh 
 vim wBridge5.sh 
 ./wBridge5.sh 
 vim wBridge5.sh 
 ./wBridge5.sh 
 ls
 ./bcalc.sh 
 vim bcalc.sh 
 ./bcalc.sh 
 ls
 rm test.pbn 
 ls
 vim README.md
 ls
 cd LINUX/
 ls
 mv bcalcguiBak bcalcgui
 cd ..
 ls
 ./bcalc.sh 
 vim bcalc.sh 
 cd LINUX/
 mv bcalcgui bcalcguiBak
 cd ..
 ls
 ./bcalc.sh 
 vim bcalc.sh 
 ./bcalc.sh 
 vim bcalc.sh 
 ./bcalc.sh 
 vim bcalc.sh 
 ./bcalc.sh 
 ls
 vim README.md 
 ls
 cd ..
 ls
 cd MON/
 ls
 vim bcalc.sh 
 ls
 pwd
 history > install.sh
 rm install.sh 
 ls
 mv WP WPback
 ./wBridge5.sh 
 vim wBridge5.sh 
 ls
 rm -rf WP
 ./wBridge5.sh 
 ls
 vim wBridge5.sh 
 rm -rf WP
 ./wBridge5.sh 
 ls
 rm -rf WP
 mv WPback/ WP
 ls
 pwd
 vim bcalc.sh 
 sudo apt-cache search wine
 pwd
 vim bcalc.sh 
 ls
 echo $WINEPREFIX
 ls *.sh
 vim wBridge5.sh 
 ls
 vim bcalc.sh 
 vim wBridge5.sh 
 pwd
 ls
 pwd
 ls
 pwd
 cd 200530/esports-for-engineers-v30/
 ls
 cd MON/
 ls
 ls $WINEPREFIX/drive_c/wbridge5/Wbridge5.exe
 echo "$WINEPREFIX/drive_c/wbridge5/Wbridge5.exe"
 echo "$PWD/WP/drive_c/wbridge5/Wbridge5.exe"
 ls WP/drive_c/wbridge5/Wbridge5.exe
 vim wBridge5.sh 
 ls
 ls DOC/REFERENCE/
 cd DOC/REFERENCE/
 ls
 vim exitMessageBcalc.txt 
 cd ..
 ls
 cd LINUX/
 ls
 mv bcalcguiBak bcalcgui
 mv bcalcgui bcalcguiBak
 mv bcalcguiBak bcalcgui
 mv bcalcgui bcalcguiBak
 ls
 cd ..
 ls
 cd installFiles/
 ls
 cd MON/
 ls
 cd scripts/
 ls
 cd ..
 ls
 cd scripts/
 ls
 rm
 rm *
 ls
 cp /home/main/200530/esports-for-engineers-v30/MON/*.sh .
 ls
 cp /home/main/200530/esports-for-engineers-v30/MON/*.sh .
 ls
 mv install.sh README.md
 vim README.md 
 mv README.md README.txt
 vim README.txt 
 ls
 cd ..
 ls
 cd ..
 ls
 cd ../..
 ls
 time tar czf c200530_15_53ew.tar.gz esports-for-engineers-v30
 locate GPLGS
 pwd
 ls
 cd esports-for-engineers-v30/
 ls
 cd TUE/
 ls
 cd ..
 cd installFiles/
 ls
 cd T
 cd TUE/
 ls
 # start TUE install
 pwd
 # starting directory esports-for-engineers-v30/installFiles/TUE
 # installing GPL Demo by following 
 # esports-for-engineers-v30/TUE/DOC/GPL_Easy_Installation_Guide_ENG_v2.1.pdf
 ls
 cd ../../TUE/WP
 export WINEPREFIX="$PWD"
 CD ../../installFiles/TUE/
 cd ../../installFiles/TUE/
 ls
 cd gpl-demo/
 ls
 # install gpl 2004 free demo
 # Important note - choose C:\Sierra|GPL as the install location!!!
 # do not accept the default location Program Files(x86)\GPL DEMO 2004
 # this will save you time during the install
 # because most add ons use C:\Sierra\GPL as the default location.
 wine gpl_2004_demo.exe 
 # No need to install Wine Mono or Wine Gecko
 ls
 wine gplrast_v2.5.exe 
 # and one final GPL demo patch ...
 ls
 cd GPL_67_PATCH/
 ls
 wine 1967_PATCH_v1.3_Setup.exe 
 cd ..
 ls
 # now install the GEM+ launcher
 wine GEMPackage_2.5.0.32.exe 
 cd $WINEPREFIX
 cd drive_c/
 ls
 cd Sierra/GPL/
 ls
 # per Install pdf instructions to make exports directory
 mkdir exports
 ls
 echo $WINEPREFIX
 ls
 wine gpl.exe 
 wine ../../GPLSecrets/GEM+/GEMP2.exe 
 # delete TUE/WP/drive_c/users/Public/Documents/GEM+/GEM.ini before running GEMP+ for the first time!!!
 wine ../../GPLSecrets/GEM+/GEMP2.exe 
 export WINEPREFIX="$PWD"
 wine gpl.exe 
 winecfg
 wine gpl.exe 
 wine --version
 wine gpl2020demo.exe 
 find . -print > 200530dirList.txt
 grep odt 200530dirList.txt 
 libreoffice ./200523/ese30Introduction.odt
 cp ./200523/ese30Introduction.odt /home/main/200530/esports-for-engineers-v30/draftIntro
 grep "odt$" 200530dirList.txt 
 grep "ods$" 200530dirList.txt 
 grep "odp$" 200530dirList.txt 
 cd 200530
 ls
 cd esports-for-engineers-v30/
 ls
 ls -lt
 cd Doc/
 ls
 ls -lt
 ls external/
 cd TUE/
 ls
 pwd
 ls
 history
 pwd
 cd $WINEPREFIX
 cd 200530/ls
 cd 200530
 ls
 # bash script for TUE install
 export WINEPREFIX="$PWD"
 cd ..
 # run the 3 programs that install the GPL 2004 demo
 wine ../installFiles/TUE/gpl-demo/gpl_2004_demo.exe 
 ls
 rm -rf WP
 mkdir WP
 wine ../installFiles/TUE/gpl-demo/gpl_2004_demo.exe 
 # to speed up installation, enter "C:\Sierra\GPL" as the installation directory for GPL demo
 # this makes it easier to install car mods and tracks later, because
 # the default GPL location for these other installers is C:\Sierra\GPL
 # the TUE installs do not need wine Mono or wine Gecko
 wine ../installFiles/TUE/gpl-demo/gplrast_v2.5.exe 
 wine ../installFiles/TUE/gpl-demo/GPL_67_PATCH/1967_PATCH_v1.3_Setup.exe 
 # now start gpl.exe and create your first driver name, i.e. "linux driver67"
 wine WP/drive_c/Sierra/GPL/gpl.exe 
 # set the name in the "Player Info" screen
 # also calibrate your joystick and buttons, and select OpenGLV2 as your rasterizer
 # when prompted.  Set the screen resolution to your desktop screen resolution
 # the "Player Info" screen is often slow to respond here, but this will improve
 # later
 wine WP/drive_c/Sierra/GPL/gpl.exe 
 # if the screen is unresponsive, hit <ALT> F6 if using Ubuntu linux to give the GPL window keyboard focus
 # now you are ready to install the GEM+ launcher, (see GPL Easy Installation Guide pdf)
 wine ../installFiles/TUE/gpl-demo/GEMPackage_2.5.0.32.exe 
 # be sure to set the GPL path to C:\Sierra\GPL
 # before starting GEM+, you must create the C:\Sierra\GPL\exports directory and
 # delete esports-for-engineers-v30/TUE/WP/drive_c/users/Public/Documents/GEM+/GEM.ini
 # if you have purchased GPL, you can use the iso file rather than the demo as follows:
 ls
 mkdir WP2
 cd WP2
 export WINEPREFIX="$PWD"
 cd ..
 ls
 mkdir iso
 sudo mount -o loop ../installFiles/TUE/notUsed/Grand\ Prix\ Legends-FR.iso iso
 wine ../installFiles/TUE/notUsed/gplinstall_beta_1.08.exe 
 ls
 winecfg
 wine WP2/drive_c/Sierra/GPL/gpl.exe 
 # if you want to add tracks at this point, follow the instructions in
 # ../installFiles/TUE/Doc/GPL\ 2020\ Demo\ Instructions.pdf 
 # now run GEM+ for the first time
 wine WP/drive_c/GPLSecrets/GEM+/GEMP2.exe 
 cd WP
 export WINEPREFIX="$PWD"
 cd ..
 wine WP/drive_c/GPLSecrets/GEM+/GEMP2.exe 
 # following the instructions in ../installFiles/TUE/Doc/GPL_Easy_Installation_Guide_ENG_v2.1.pdf 
 # install the tracks for each mod, then install the mod itself, then proceed to the next mod
 history > ../installFiles/TUE/scripts/
 history > ../installFiles/TUE/scripts/historyBeforeModInstall.txt
 # there are a lot of mods and tracks, so this takes a while
 #
 # starting with the tracks for the 55 mod
 cp -R ../installFiles/TUE/addOns/tracks/55mod/1955_Spa67_Conversion_complete_gl_v1.0/spa67/ WP/drive_c/Sierra/GPL/tracks/
 # now edit season67.ini to add the spa67 track, as described in ../installFiles/TUE/Doc/GPL\ 2020\ Demo\ Instructions.pdf
 vim WP/drive_c/Sierra/GPL/seasons/67season.ini 
 pwd
 ls
 ls WP
 wine WP/drive_c/GPLSecrets/GEM+/GEMP2.exe 
 # now add the 2nd 55mod track, aintree.  This time there is a full installer so you don't need to edit 67season.ini
 wine ../installFiles/TUE/addOns/tracks/55mod/aintree_full_v2/aintree_full_v2.exe 
 echo $WINEPREFIX
 wine ../installFiles/TUE/addOns/tracks/55mod/aintree_full_v2/aintree_full_v2.exe 
 # oops - aintree_full_v2.exe is just the unpacker, not the installer
 wine ../installFiles/TUE/addOns/tracks/55mod/aintree_full_v2/TrackInstall.exe 
 pwd
 echo $WINEPREFIX
 wine ../installFiles/TUE/addOns/tracks/55mod/aintree_full_v2/TrackInstall.exe 
 wine ../installFiles/TUE/addOns/tracks/55mod/aintree_full_v2/aintree_full_v2.exe 
 wine ../installFiles/TUE/addOns/tracks/55mod/aintree_full_v2/TrackInstall.exe 
 cd ../installFiles/TUE/addOns/tracks/55mod/aintree_full_v2/
 ls
 wine TrackInstall.exe 
 cd ..
 ls
 cd GPL_Buenos\ Aires\ 1955\ n.\ 2_v1.00/
 ls
 wine GPL_Buenos\ Aires\ 1955\ n.\ 2_v1.00.exe 
 cd ..
 ls
 cd monza10k_v1full/
 ls
 wine TrackInstall.exe 
 cd ..
 ls
 cd ../..
 ls
 # now install the 55 mod
 cd mods/
 ls
 cd 55
 ls
 wine GPL55F1_1.0.3.exe 
 ls
 cd 55Mod_Update_
 cd 55Mod_Update_Patch/
 ls
 vim ReadMe\ -\ 55Mod\ Update\ Patch.txt 
 # to merge cars into GPL/cars, use rsync -a new/ old/
 rsync -a cars/ $WINEPREFIX/drive_c/Sierra/GPL/cars/
 cd ..
 ls
 cd 55Mod_Update_Ferrari625_dash_FIX/
 ls
 rsync -a cars/ $WINEPREFIX/drive_c/Sierra/GPL/cars/
 cd ..
 ls
 cd mirrorPositionFix/
 ls
 rsync -a cars/ $WINEPREFIX/drive_c/Sierra/GPL/cars/
 cd //
 cd /200530/esports-for-engineers-v30/installFiles/TUE/addOns
 cd ~/200530/esports-for-engineers-v30/installFiles/TUE/addOns
 ls
 cd tracks/
 ls
 # now get tracks for 65 mod
 cd 65mod/
 ls
 vim readme.txt 
 wine GPL65ModTracks_0.5.exe 
 # done with 65 tracks
 ls
 cd ..
 cd mods/
 ls
 cd 65
 ls
 wine GPL65F1_Alternative__2.0.2.exe 
 # done with 65 mod (skipping skin updates which take up a lot of space and don't effect physics)
 cd ..
 cd tracks/
 ls
 # Can Am 66 mod is next
 ls ../mods
 ls
 cd 66CAmod/
 ls
 ls bahflg_forBestLapScreen
 cd GPL_Bhampton_v1.01/
 ls
 wine GPL_Bhampton_v1.01.exe 
 cd ..
 ls
 cd GPL_Nassau_v1.0/
 ls
 wine GPL_Nassau_v1.0.exe 
 cd ..
 ls
 cd GPL_Riverside_66_6v1.0/
 ls
 wine GPL_Riverside_66_6v1.0.exe 
 cd ..
 ls
 cd gpl_stjovite/
 ls
 wine trackInstall.exe 
 cd ..
 ls
 cd Laguna67_v1.1/
 ls
 wine TrackInstall.exe 
 cd ..
 ls
 cd Stardust\ v1.0/
 ls
 wine Stardust\ v1.0.exe 
 cd ..
 cd StJovite_mini_texture_addon/
 ls
 cd ..
 ls
 rsync -a StJovite_mini_texture_addon/ $WINEPREFIX/drive_c/Sierra/GPL/tracks/stjovite/
 cd ..
 cd 66CAmod/
 ls
 ls TrackINI_fix/
 ls
 cd CA66_brm_A67dash/
 ls
 cd ..
 cd CanAm\ gfx\ addons\ x\ laguna67/
 ls
 ls laguna67/
 rsync -a laguna67/ $WINEPREFIX/drive_c/Sierra/GPL/tracks/laguna67/
 cd ..
 ls
 ls CA66_brm_A67dash/
 ls
 cd ..
 ls
 cd ..
 cd mods/
 ls
 cd CA66/
 ls
 # now install Can Am 66 mod
 wine gplcanam1966_1.16.04.12.exe 
 # sell your soul to GPL?
 # don't know where to put skin patch CA66_brm_A67dash, so don't use it
 ls
 cd ..
 ls
 # next, 66 mod tracks
 cd ../tracks/
 ls
 cd 66mod/
 ls
 wine GPL_ltrackinstall_brands67v1.0_HR.exe
 cd GPL_ltrackinstall_brands67v1.0_HR.exe/
 ls
 wine GPL_ltrackinstall_brands67v1.0_HR.exe 
 cd ..
 ls
 cd oulton/
 ls
 wine TrackInstall.exe 
 cd ..
 ls
 cd reims_gpl/
 ls
 wine TrackInstall.exe 
 cd ..
 ls
 cd syracuse/
 ls
 wine TrackInstall.exe 
 cd ../..
 ls
 cd ..
 ls
 # now install 66 mod
 ls
 cd mods/
 ls
 cd 66
 ls
 cd 1966_Mod_PATCH_v2.0/
 ls
 vim 66_Patch_v2.0_README.txt 
 wine 1966mod_PATCH_v2.0_Setup.exe 
 cd ..
 ls
 cd driv66/
 ls
 diff driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/driv66.ini
 cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/
 cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/brands67
 cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/monza10k
 cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/mexico
 cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/zandvort
 cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/watglen
 cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/spa67
 cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/nurburg
 cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/spa
 cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/reims
 cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/monaco
 cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/monza
 cd ..
 ls
 cd ..
 ls
 # the 1967 F2 mod is next
 cd ../tracks/
 ls
 cd 67F2mod/
 ls
 # again, skipping 1966 mod skin update to save space
 ls
 cd Jarama_bs/
 ls
 cd ..
 ls
 cd jarama_v10/
 ls
 wine TrackInstall.exe 
 cd ..
 ls
 cd Jarama_bs/
 ls
 cd ..
 rsync -a Jarama_bs/ $WINEPREFIX/drive_c/Sierra/GPL/tracks/jarama
 ls
 cd ../..
 cd mods
 ls
 cd 67F2/
 ls
 wine 67F2_Mod_for_Grand_Prix_Legends_v1.0.exe 
 # again, skipping minor skin fixes
 ls
 cd ..
 ls
 # sports cars next
 cd ../tracks/
 ls
 cd 67SCmod/
 ls
 cd bsarthe/
 ls
 wine TrackInstall.exe 
 cd ..
 ls
 cd GPL_dayto24h_v1.0.exe/
 ls
 wine GPL_dayto24h_v1.0.exe 
 cd ../GPL_mnz1000kv1.0.exe/
 ls
 wine GPL_mnz1000kv1.0.exe 
 cd ..
 ls
 cd GPL_sebr67_v1.00.exe/
 ls
 wine GPL_sebr67_v1.00.exe 
 cd ..
 ls
 # add the very long Targa track
 wine GPL_Targa_Standard_v1.exe 
 cd montlh66v1/
 ls
 wine trackInstall.exe 
 cd ..
 ls
 cd norisrngv1.00/
 ls
 wine norisrngv1.00.exe 
 cd ..
 ls
 cd zeltweg1967_GPL/
 ls
 wine zeltweg1967.exe 
 cd ../..
 ls
 ls 67SCmod/
 # done with 67 sports car tracks
 cd ..
 cd mods/
 ls
 cd 67SC/
 ls
 wine GPLSC_EXTRA_1.1.exe 
 cd ..
 ls
 cd ..
 ls
 # next is the 67x mod
 # refer to GPL_Easy_Installation_Guide_ENG_v2.1.pdf to follow along with the installation steps
 ls tracks/
 # the 67x mod does not add any new tracks
 cd mods/
 ls
 cd 67x
 ls
 cd 67x
 ls
 ls GPL
 vim README_GPL\ 1967\ F1\ Extra\ Mod\ -\ Online\ Edition\ \(2018\).txt 
 ls
 time rsync -a GPL/ $WINEPREFIX/drive_c/Sierra/GPL/
 # it took 7 sec to copy 1.i Gig(!)
 # 1.8 Gig
 ls
 cd ..
 sl
 ls
 cd 67X
 ls
 cd 67x
 ls
 cd 1967x_setups/
 ls
 rsync -a setups/ $WINEPREFIX/drive_c/Sierra/GPL/setups/
 # some copied files are readonly, so remove this constraint
 # use chmod -R 777 from the base of the whole directory tree
 ls
 cd ..
 ls
 cd ..
 ls
 # next is 68 
 cd ../tracks/
 ls
 # no new tracks for 68
 cd ../mods/
 ls
 cd 68/
 ls
 cd 68\ mod/
 ls
 time rsync -a GPL/ $WINEPREFIX/drive_c/Sierra/GPL/
 # it took 15 seconds to copy 2.7 Gibs
 ls
 cd ..
 ls
 cd GEM+\ pics/
 ls
 ls 68\ Mod\ Gem\ Plus\ Pics/
 rsync -a 68\ Mod\ Gem\ Plus\ Pics/ $WINEPREFIX/drive_c/GPLSecrets/GEM+/Pictures/
 cd ..
 ls
 # in GPL directory ran rsync -a mods/ Mods/
 # then rm mods
 # linux is case sensitive, Windows apparently not
 # then rm -rf mods
 ls
 # didn't know where to put brabham skins, so skipped these cosmetic files
 cd ..
 ls
 cd 69x
 ls
 # 69X mod is next
 cd ..
 ls
 cd tracks/
 ls
 cd 69X/
 ls
 cd 69-Xtra_missing_track_files/
 ls
 ls gpl/
 rsync -a gpl/ $WINEPREFIX/drive_c/Sierra/GPL/
 cd ..
 cd ../..
 cd mods/69X/
 ls
 cd 69mod_Xtra_for_Grand_Prix_Legends/
 ls
 rsync -a GPL/ $WINEPREFIX/drive_c/Sierra/GPL/
 # need to keep large mod files compressed to save space
 ls
 cd ..
 ls
 cd ..
 ls
 # only one left, the 71 Can Am mod
 # first the tracks ...
 cd ../tracks/
 ls
 cd 71CAmod/
 ls
 cd Donnybrooke_71_v1.0/
 ls
 wine Donnybrooke_71_v1.0.exe 
 cd ..
 ls
 cd Edmonton/
 ls
 wine TrackInstall.exe 
 cd ..
 ls
 cd midOCA71/
 ls
 wine midOCA71.exe 
 vim ReadMe.txt 
 vim Mirror\ Zone.txt 
 ls
 cd ..
 ls
 cd Road_America__1995__Wisconsin_Gran_Prix__GPL_/
 ls
 cd 'Road America  1995  Wisconsin Gran Prix (GPL)'
 ls
 wine TrackInstall.exe 
 cls
 ls
 cd ..
 ls
 cd Road\ America\ graphics\ update/
 ls
 pwd
 cd ..
 ls
 rsync -a 'Road America graphics update'/ $WINEPREFIX/drive_c/Sierra/GPL/tracks/elkhart/
 cd ../..
 ls
 ls other
 cd ..
 ls
 cd mods/
 ls
 cd CA71/
 ls
 wine CA71_1.0.exe 
 ls
 cd CA71_HistAdd_v1.0/
 ls
 okular ReadMe_CA71_Historical\ Add-on_v1.0.pdf 
 ls
 cd ..
 ls
 # not installing Can Am 71 historical add-ons, too big (1.6 Gig)
 ls
 cd ..
 ls
 cd ..
 ls
 cd tracks/
 ls
 cd other/
 ls
 # adding a few of the more famous extra tracks
 cd panorama/
 ls
 wine TrackInstall.exe 
 cd ..
 ls
 cd 'GPLEA Solitude v1.0' 
 ls
 cd GPLEA\ Solitude\ v1.0/
 ls
 wine TrackInstall.exe 
 ls
 cd ..
 ls
 cd ..
 ls
 cd IsleMan/
 ls
 wine TrackInstall.exe 
 ls
 cd ..
 ls
 # now add the driver names in gpl driver info
 # and adjust GEM+ config settings
 # as described in GPL_Easy_Installation_Guide_ENG_v2.1.pdf
 cd ..///
 cd ..
 ls
 cd ..
 ls
 cd scripts/
 ls
ls
cd 66CAmod/
ls
ls bahflg_forBestLapScreen
cd GPL_Bhampton_v1.01/
ls
wine GPL_Bhampton_v1.01.exe 
cd ..
ls
cd GPL_Nassau_v1.0/
ls
wine GPL_Nassau_v1.0.exe 
cd ..
ls
cd GPL_Riverside_66_6v1.0/
ls
wine GPL_Riverside_66_6v1.0.exe 
cd ..
ls
cd gpl_stjovite/
ls
wine trackInstall.exe 
cd ..
ls
cd Laguna67_v1.1/
ls
wine TrackInstall.exe 
cd ..
ls
cd Stardust\ v1.0/
ls
wine Stardust\ v1.0.exe 
cd ..
cd StJovite_mini_texture_addon/
ls
cd ..
ls
rsync -a StJovite_mini_texture_addon/ $WINEPREFIX/drive_c/Sierra/GPL/tracks/stjovite/
cd ..
cd 66CAmod/
ls
ls TrackINI_fix/
ls
cd CA66_brm_A67dash/
ls
cd ..
cd CanAm\ gfx\ addons\ x\ laguna67/
ls
ls laguna67/
rsync -a laguna67/ $WINEPREFIX/drive_c/Sierra/GPL/tracks/laguna67/
cd ..
ls
ls CA66_brm_A67dash/
ls
cd ..
ls
cd ..
cd mods/
ls
cd CA66/
ls
# now install Can Am 66 mod
wine gplcanam1966_1.16.04.12.exe 
# sell your soul to GPL?
# don't know where to put skin patch CA66_brm_A67dash, so don't use it
ls
cd ..
ls
# next, 66 mod tracks
cd ../tracks/
ls
cd 66mod/
ls
wine GPL_ltrackinstall_brands67v1.0_HR.exe
cd GPL_ltrackinstall_brands67v1.0_HR.exe/
ls
wine GPL_ltrackinstall_brands67v1.0_HR.exe 
cd ..
ls
cd oulton/
ls
wine TrackInstall.exe 
cd ..
ls
cd reims_gpl/
ls
wine TrackInstall.exe 
cd ..
ls
cd syracuse/
ls
wine TrackInstall.exe 
cd ../..
ls
cd ..
ls
# now install 66 mod
ls
cd mods/
ls
cd 66
ls
cd 1966_Mod_PATCH_v2.0/
ls
vim 66_Patch_v2.0_README.txt 
wine 1966mod_PATCH_v2.0_Setup.exe 
cd ..
ls
cd driv66/
ls
diff driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/driv66.ini
cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/
cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/brands67
cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/monza10k
cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/mexico
cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/zandvort
cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/watglen
cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/spa67
cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/nurburg
cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/spa
cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/reims
cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/monaco
cp driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/tracks/monza
cd ..
ls
cd ..
ls
# the 1967 F2 mod is next
cd ../tracks/
ls
cd 67F2mod/
ls
# again, skipping 1966 mod skin update to save space
ls
cd Jarama_bs/
ls
cd ..
ls
cd jarama_v10/
ls
wine TrackInstall.exe 
cd ..
ls
cd Jarama_bs/
ls
cd ..
rsync -a Jarama_bs/ $WINEPREFIX/drive_c/Sierra/GPL/tracks/jarama
ls
cd ../..
cd mods
ls
cd 67F2/
ls
wine 67F2_Mod_for_Grand_Prix_Legends_v1.0.exe 
# again, skipping minor skin fixes
ls
cd ..
ls
# sports cars next
cd ../tracks/
ls
cd 67SCmod/
ls
cd bsarthe/
ls
wine TrackInstall.exe 
cd ..
ls
cd GPL_dayto24h_v1.0.exe/
ls
wine GPL_dayto24h_v1.0.exe 
cd ../GPL_mnz1000kv1.0.exe/
ls
wine GPL_mnz1000kv1.0.exe 
cd ..
ls
cd GPL_sebr67_v1.00.exe/
ls
wine GPL_sebr67_v1.00.exe 
cd ..
ls
# add the very long Targa track
wine GPL_Targa_Standard_v1.exe 
cd montlh66v1/
ls
wine trackInstall.exe 
cd ..
ls
cd norisrngv1.00/
ls
wine norisrngv1.00.exe 
cd ..
ls
cd zeltweg1967_GPL/
ls
wine zeltweg1967.exe 
cd ../..
ls
ls 67SCmod/
# done with 67 sports car tracks
cd ..
cd mods/
ls
cd 67SC/
ls
wine GPLSC_EXTRA_1.1.exe 
cd ..
ls
cd ..
ls
# next is the 67x mod
# refer to GPL_Easy_Installation_Guide_ENG_v2.1.pdf to follow along with the installation steps
ls tracks/
# the 67x mod does not add any new tracks
cd mods/
ls
cd 67x
ls
cd 67x
ls
ls GPL
vim README_GPL\ 1967\ F1\ Extra\ Mod\ -\ Online\ Edition\ \(2018\).txt 
ls
time rsync -a GPL/ $WINEPREFIX/drive_c/Sierra/GPL/
# it took 7 sec to copy 1.i Gig(!)
# 1.8 Gig
ls
cd ..
sl
ls
cd 67X
ls
cd 67x
ls
cd 1967x_setups/
ls
rsync -a setups/ $WINEPREFIX/drive_c/Sierra/GPL/setups/
# some copied files are readonly, so remove this constraint
# use chmod -R 777 from the base of the whole directory tree
ls
cd ..
ls
cd ..
ls
# next is 68 
cd ../tracks/
ls
# no new tracks for 68
cd ../mods/
ls
cd 68/
ls
cd 68\ mod/
ls
time rsync -a GPL/ $WINEPREFIX/drive_c/Sierra/GPL/
# it took 15 seconds to copy 2.7 Gibs
ls
cd ..
ls
cd GEM+\ pics/
ls
ls 68\ Mod\ Gem\ Plus\ Pics/
rsync -a 68\ Mod\ Gem\ Plus\ Pics/ $WINEPREFIX/drive_c/GPLSecrets/GEM+/Pictures/
cd ..
ls
# in GPL directory ran rsync -a mods/ Mods/
# then rm mods
# linux is case sensitive, Windows apparently not
# then rm -rf mods
ls
# didn't know where to put brabham skins, so skipped these cosmetic files
cd ..
ls
cd 69x
ls
# 69X mod is next
cd ..
ls
cd tracks/
ls
cd 69X/
ls
cd 69-Xtra_missing_track_files/
ls
ls gpl/
rsync -a gpl/ $WINEPREFIX/drive_c/Sierra/GPL/
cd ..
cd ../..
cd mods/69X/
ls
cd 69mod_Xtra_for_Grand_Prix_Legends/
ls
rsync -a GPL/ $WINEPREFIX/drive_c/Sierra/GPL/
# need to keep large mod files compressed to save space
ls
cd ..
ls
cd ..
ls
# only one left, the 71 Can Am mod
# first the tracks ...
cd ../tracks/
ls
cd 71CAmod/
ls
cd Donnybrooke_71_v1.0/
ls
wine Donnybrooke_71_v1.0.exe 
cd ..
ls
cd Edmonton/
ls
wine TrackInstall.exe 
cd ..
ls
cd midOCA71/
ls
wine midOCA71.exe 
vim ReadMe.txt 
vim Mirror\ Zone.txt 
ls
cd ..
ls
cd Road_America__1995__Wisconsin_Gran_Prix__GPL_/
ls
cd 'Road America  1995  Wisconsin Gran Prix (GPL)'
ls
wine TrackInstall.exe 
cls
ls
cd ..
ls
cd Road\ America\ graphics\ update/
ls
pwd
cd ..
ls
rsync -a 'Road America graphics update'/ $WINEPREFIX/drive_c/Sierra/GPL/tracks/elkhart/
cd ../..
ls
ls other
cd ..
ls
cd mods/
ls
cd CA71/
ls
wine CA71_1.0.exe 
ls
cd CA71_HistAdd_v1.0/
ls
okular ReadMe_CA71_Historical\ Add-on_v1.0.pdf 
ls
cd ..
ls
# not installing Can Am 71 historical add-ons, too big (1.6 Gig)
ls
cd ..
ls
cd ..
ls
cd tracks/
ls
cd other/
ls
# adding a few of the more famous extra tracks
cd panorama/
ls
wine TrackInstall.exe 
cd ..
ls
cd 'GPLEA Solitude v1.0' 
ls
cd GPLEA\ Solitude\ v1.0/
ls
wine TrackInstall.exe 
ls
cd ..
ls
cd ..
ls
cd IsleMan/
ls
wine TrackInstall.exe 
ls
cd ..
ls
# now add the driver names in gpl driver info
# and adjust GEM+ config settings
# as described in GPL_Easy_Installation_Guide_ENG_v2.1.pdf
cd ..///
cd ..
ls
cd ..
ls
cd scripts/
ls
history > historyAfterModInstall.txt
cd ..
ls
cd addOns/
ls
cd mods/
ls
# names are, e.g., linux driver55, linux driver65, etc.
time tar czf ch_TUE_200531_00_13.tar.gz TUE
find . -print | grep driv66
pwd
find . -print | grep 7z
cp -R esports-for-engineers-v30/ ../200531
time cp -R esports-for-engineers-v30/ ../200531
cd WP
export WINEPREFIX="$PWD"
cd drive_c/
ls
cd Sierra/GPL/
ls
wine gpl.exe 
cd ../..
ls
cd GPLSecrets/
ls
cd GEM+/
ls
wine GEMP2.exe 
find . -print > 200531dirlist.txt
time find . -print > 200531dirlist.txt
vim goodwood65_track.txt
time tar czf ch200531_19_40_TUE.tar.gz TUE/
pwd
ls
echo $WINEPREFIX
find . -print |  grep driv66.ini
vim driv66.ini 
echo $WINEPREFIX
find . -print | grep setup
./gpl-demo.sh 
ls
cd GPL-DEMO/
ls
cd WP
ls
cd drive_c/
ls
find . -print | grep fs_goodwood_11710
echo $WINEPREFIX
pwd
echo $WINEPREFIX
pwd
mkdir tmp2
mv *.rpy tmp2
mv *.zip tmp2
ls
pwd
cd
cd 200531
ls
cd esports-for-engineers-v30/TUE/WP
export WINEPREFIX="$PWD"
cd /home/main/200531/esports-for-engineers-v30/installFiles/TUE/setups/setups
ls
wine 65_setups310305.exe 
ls
more thank\ you.txt 
ls
cd setups/
ls
ls fs_*.*
cp fs_*.* /home/main/200531/esports-for-engineers-v30/installFiles/TUE/setups/fsSetupsReplaysForEachTrack
ls
mkdir tmp
cp * tmp
cd tmp/
ls
unzip *.zip
ls
man unzip
unzip
ls
unzip fs_aintree_ferrari.zip 
ls
cat readme.txt 
cd ..
rm -rf tmp
mkdir tmp
cp * tmp
cd tmp/
ls
ls > dirList.sh
vim dirList.sh 
sudho chmod +x dirList.sh 
sudo chmod +x dirList.sh 
ls
./dirList.sh 
ls
cp *.rpy /home/main/200531/esports-for-engineers-v30/TUE/WP/drive_c/Sierra/GPL/replay
echo $WINEPREFIX
exit
time tar czf ch200531_21_28_TUE.tar.gz TUE
cd TUE/WP/
ls
pwd
export WINEPREFIX="/home/main/200531/esports-for-engineers-v30/TUE/WP"
ls
wine 'GPL Setup Manager.exe'
cd ..
find . -print | grep Setup | grep Manager | grep exe
find . -print | grep exe
./gpl-demo.sh 
pwd
ls
more gpl-demo.sh 
export WINEPREFIX=$HOME/esports-for-engineers/GPL-DEMO/WP
winecfg
ls
sudo rm -rf iso
ls
cd WP/
ls
export WINEPREFIX="$PWD"
ls
cd drive_c/
ls
cd Sierra/
cd ..
cd GPLSecrets/
cd GEM+/
ls
wine GEMP2.exe 
locate 1966 | grep PATCH
wine GEMP2.exe 
history > $WINEPREFIX/../200531_21_15history2.txt
wine GEMP2.exe 
ls
cd ..
ls
cd GPL\ Setup\ Manager/
ls
ls *.exe
wine 'GPL Setup Manager.exe' 
cd ..
ls
cd users/Public/
ls
cd Documents/
ls
cd GEM+/
ls
vim GEM.ini 
export WINEPREFIX="$PWD"
cd ../../installFiles/TUE/addOns/newGoodwood/
ls
wine GPL_goodwd65_v1.0.exe 
cd ..
ls
cd mods/
ls
cd ..
cd tracks/
ls
cd 66mod/
ls
cd ../..
ls
cd md
cd mods/
ls
cd 66/
l
ls
chmod +x gpl1966_1.0.exe 
ls
# installed the add-on v2 patch without installing the V1 patch first.  Trying again...
echo $WINEPREFIX
ls
wine gpl1966_1.0.exe 
cd 1966_Mod_PATCH_v2.0/
ls
vim 66_Patch_v2.0_README.txt 
ls
wine 1966mod_PATCH_v2.0_Setup.exe 
ls
cd ..
ls
cd driv66/
ls
diff driv66.ini $WINEPREFIX/../drive_c/Sierra/GPL/driv66.ini
diff driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/driv66.ini
kompare driv66.ini $WINEPREFIX/drive_c/Sierra/GPL/driv66.ini
cd ../..
cd ..
ls
echo $WINEPREFIX
# install replay analyzer
ls
cd replay\ analyzer/
ls
wine install.exe 
cd ..
ls
cd ..
ls
# install setup manager
mkdir setupManager
mv 'GPL Setup Manager v2.7.0.zip' setupManager/
cd setupManager/
ls
unzip GPL\ Setup\ Manager\ v2.7.0.zip 
ls
cd GPL\ Setup\ Manager\ v2.7.0/
ls
ls 'GPL Setup Manager v2.7.0 Release Package'/
cd ../..
ls
cd setupManager/
ls
cd GPL\ Setup\ Manager\ v2.7.0/
ls
clear
ls
cd 'GPL Setup Manager v2.7.0 Release Package'
ls
cd ..
ls
rsync -a 'GPL Setup Manager v2.7.0 Release Package'/ "$WINEPREFIX/drive_c/GPLSecrets/GPL Setup Manager/"
echo $WINEPREFIX
history > $WINEPREFIX/../200531_21_15history.txt
winecfg
cd $WINEPREFIX
ls
cd drive_c/
cd Sierra/GPL/
ls
wine gpl.exe
history
ls
export WINEPREFIX=/home/main/200531/esports-for-engineers-v30/TUE/WP
wine 'GPL Setup Manager.exe'
vim '67 Setup Manager Default.gplsm'
ls -lt
cd ..
ls
ls -Rl
ls -Rl > ~/Documents/1.txt
ls -R > ~/Documents/1.txt
ls -R 
ls -R > ~/Documents/1.txt
ls
cd GPL\ Setup\ Manager/
ls
mkdir tmp
ls *.gplsm
ls
cd SAE\ Setup\ Data/
ls
mkdir tmp
mv *.gplsm tmp
ls
vim SAE\ Setup\ Data.txt 
cd ..
ls
cd Metric\ Setup\ Data/
ls
mkdir tmp 
mv *.gplsm tmp
ls
cd ..
vim GPL\ Setup\ Manager\ Help.txt 
vim GPL\ Setup\ Manager\ Help.rtf 
cd Documents/
kompare 0.txt 1.txt
ls -Rl > ~/Documents/0.txt
ls -R > ~/Documents/0.txt
pwd
export WINEPREFIX="$PWD"
cd drive_c/
ls
cd GPLSecrets/
ls
cd GEM+/
ls
wine GEMP2.exe 
ls
export WINEPREFIX="$HOME/200531/esports-for-engineers-v30/TUES/WP"
winecfg
export WINEPREFIX="$HOME/200531/esports-for-engineers-v30/TUE/WP"
winecfg
ls
wine GEMP2.exe 
ls *.ini
rm 'GPL Setup Manager Program Settings.ini'
find . -print | grep tar | grep gz
time cp -R ../200531/esports-for-engineers-v30 .
ls ../../..
ls ../../../..
ls ../../..
export WINEPREFIX=../../..
winecfg
cd ../../..
export WINEPREFIX="$PWD"
cd drive_c/GPLSecrets/GEM+/
ls
winecfg
wine GEMP2.exe 
ls
pwd
cp GEM.ini GEM.iniBak
vim GEM.ini
kompare GEM.ini /home/main/200531/esports-for-engineers-v30/TUE/WP/drive_c/users/Public/Documents/GEM+/GEM.ini 
vim GEM.ini 
ls
history
kompare GEM.ini /home/main/200531/esports-for-engineers-v30/TUE/WP/drive_c/users/Public/Documents/GEM+/GEM.ini 
vim "ali fer glen x4a.fe1" 
pwd
rsync -a driver67x__name/ /home/main/200601/esports-for-engineers-v30/TUE/WP/drive_c/Sierra/GPL/players/driver67__linux/setups/
rsync -a driver67x__name/ /home/main/200601/esports-for-engineers-v30/TUE/WP/drive_c/Sierra/GPL/players/driver67x__linux/setups/
export WINEPREFIX="$PWD"
LS
ls
cd drive_c/
ls
cd GPLSecrets/
ls
cd GEM+/
ls
wine GEMP2.exe 
winecfg
wine GEMP2.exe 
./gpl-demo.sh 
ls
./setDesktopResolution_gpl-demo.sh
./gpl-demo.sh 
pwd
export WINEPREFIX="/home/main/200601/esports-for-engineers-v30/TUE/WP"
wine 4gb_patch.exe 
time tar czf ch200606_20_59_TUE.tar.gz TUE
ls -Rl setups
ls -Rl setups | more
cd ..
ls
cd driver65__demo/
ls -Rl setups | more
ls
ls setups/
rsync -a setups/ /home/main/200601/esports-for-engineers-v30/TUE/WP/drive_c/Sierra/GPL/players/driver65__linux/setups/
ls -Rl setups | more
cd ..
ls
cd driver66__demo/
ls
ls -Rl setups | more
rsync -a setups/ /home/main/200601/esports-for-engineers-v30/TUE/WP/drive_c/Sierra/GPL/players/driver66__linux/setups/
cd ..
ls
cd driver66ca__demo/
ls -Rl setups | more
cd ..
ls
cd driver67__demo/
ls
ls -Rl setups | more
cd ..
ls
cd driver67F2__demo/
ls -Rl setups | more
cd ..
ls
cd driver69__demo/
ls -Rl setups | more
ls
cd ..
ls
cd driver66__demo/
history
rsync -a setups/ /home/main/200601/esports-for-engineers-v30/TUE/WP/drive_c/Sierra/GPL/players/driver66__linux/
cd ..
ls
cd driver66ca__demo/
rsync -a setups/ /home/main/200601/esports-for-engineers-v30/TUE/WP/drive_c/Sierra/GPL/players/driver66ca__linux/setups/
cd ..
ls
cd driver67__demo/
rsync -a setups/ /home/main/200601/esports-for-engineers-v30/TUE/WP/drive_c/Sierra/GPL/players/driver67__linux/setups/
rsync -a setups/ /home/main/200601/esports-for-engineers-v30/TUE/WP/drive_c/Sierra/GPL/players/driver67x__linux/setups/
cd ..
ls
cd driver67F2__demo/
rsync -a setups/ /home/main/200601/esports-for-engineers-v30/TUE/WP/drive_c/Sierra/GPL/players/driver67F2__linux/setups/
cd ..
ls
cd driver69__demo/
rsync -a setups/ /home/main/200601/esports-for-engineers-v30/TUE/WP/drive_c/Sierra/GPL/players/driver69x__linux/setups/
cd ..
ls
cd driver69X__demo/
rsync -a setups/ /home/main/200601/esports-for-engineers-v30/TUE/WP/drive_c/Sierra/GPL/players/driver69x__linux/setups/
cd ..
cd driver71CA__demo/
rsync -a setups/ /home/main/200601/esports-for-engineers-v30/TUE/WP/drive_c/Sierra/GPL/players/driver71CA__linux/setups/
cd ..
ls
cd driverSC__demo/
rsync -a setups/ /home/main/200601/esports-for-engineers-v30/TUE/WP/drive_c/Sierra/GPL/players/driver67sc__linux/setups/
pwd
ls
echo $WINEPREFIX
cd ..
ls
cd driver66__linux/
ls
pwd
cd ..
cd driver66ca__linux/
pwd
cd ..
ls
cd driver67__linux/
pwd
cd ..
cd driver67x__linux/
pwd
cd ..
cd driver67F2__linux/
pwd
cd ..
cd driver69x__linux/
pwd
cd ../driver71CA__linux/
pwd
cd ../driver67sc__linux/
pwd
cd ../../../..
cd ..
export WINEPREFIX="$PWD"
cd drive_c/GPLSecrets/GEM+/
wine GEMP2.exe 
winecfg
wine GEMP2.exe 
pwd
export WINEPREFIX=$PWD
cd drive_c/
ls
cd Sierra/
ls
cd GPL/
ls
ls *.exe
export WINEPREFIX=$PWD
wine gpl2020demo.exe 
kompare core.ini /home/main/200601/esports-for-engineers-v30/TUE/WP/drive_c/Sierra/GPL/core.ini
kompare core.ini /home/main/200601/esports-for-engineers-v30/TUE/WP/drive_c/Sierra/GPL/Core.ini
pwd
ls
ls *.ini
ls
./gpl_replay.sh 
ls
./gpl_replay.sh 
./gpl_setup_manager.sh 
vim gpl_setup_manager.sh 
./gpl_setup_manager.sh 
ls
./gpl-demo.sh 
cd ..
ls
time tar czf ch200601_23_15_TUE.tar.gz TUE
ls
./gpl-demo.sh 
ls
./gpl_replay.sh 
ls
./gpl-demo.sh 
export WINEPREFIX=$PWD
echo $WINEPREFIX
cd drive_c/GPLSecrets/GEM+/
wine GEMP2.exe 
time cp ~/200602/ch200602_10_09_esports-for-engineers-v30.tar.gz .
time tar czf ch200602_10_09_esports-for-engineers-v30.tar.gz esports-for-engineers-v30/
grep W2 200529dirList.txt 
grep W2 200529dirList.txt | grep 2019
./wBridge5.sh 
vim installScript.sh
ls *.sh
vim installScript2.sh
scid
export WINEPREFIX=$PWD
# copy contents of ../INSTALL/nibbler-1.4.5-windows and ../INSTALL/lc0_win to $WINEPREFIX
# also copy ../INSTALL/Scid-4.7.0_x64_windows.exe to $WINEPREFIX
ls
winecfg
# set winecfg graphics to emulate a virtual desktop at your desktop resolution
ls
wine Scid-4.7.0_x64_windows.exe 
wine nibbler.exe 
ls
wine lc0.exe 
ls
cd drive_c/
ls
cd ..
ls
cp *.* drive_c
cd drive_c/
ls
wine nibbler.exe 
cd ../..
rm -rf WP
mkdir WP
winecfg
cd ..
ls
cd ..
ls
cd INSTALL/
ls
wine Scid-4.7.0_x64_windows.exe 
echo $WINEPREFIX
cd ../WP
WINEPREFIX=$PWD
cd ../INSTALL/
ls
wine Scid-4.7.0_x64_windows.exe 
cd ..
ls
cd WP/
cd drive_c/
ls
cd nibbler-1.4.5-windows/
ls
wine nibbler.exe 
winecfg
wine nibbler.exe 
wine lc0.exe
wine nibbler.exe 
cd ..
ls
cd ../..
ls
rm -rf WP
mkdir WP
sudo apt-cache search blas | grep open
unzip nibbler-1.4.5-linux.zip 
unzip nibbler-1.4.5-windows.zip 
cd ..
ls
cd WP
ls
export WINEPREFIX=$PWD
cd ..
ls
cd INSTALL/
ls
cd nibbler-1.4.5-windows/
ls
wine nibbler.exe 
cd ..
ls
wine Scid-4.7.0_x64_windows.exe 
pwd
ls
cd ..
ls
cd WP/
ls
cd drive_c/
ls
cd Scid-4.7.0/
ls
cd bi
cd bin/
ls
wine scid.exe 
cd ../..
ls
cd nibbler/
ls
wine nibbler.exe 
cd ..
ls
cd ../..
ls
cd INSTALL/
ls
cd nibbler-1.4.5-linux/
ls
sudo chmod +x nibbler 
ls
./nibbler 
vim installScript.sh
scid
vim nibbler.sh 
ls
vim nibbler.sh 
cp nibbler.sh scid.sh
vim scid.sh 
vim nibbler.sh 
# bash commands to install the MON directory
# the only directory tree at the start is installFiles
cd esports-for-engineers-v30
mkdir MON TUE WED THU FRI SAT SUN
mkdir MON/WP TUE/WP WED/WP THU/WP FRI/WP SAT/WP SUN/WP
mkdir MON/DOC
mkdir MON/INSTALL
mkdir MON/LINUX
cd MON/WP

# set the wine directory
export WINEPREFIX="$PWD"
cd ..

# cd to the installFiles directory tree

cd installFiles/MON/
cp scripts/*.sh "$WINEPREFIX/.."
cp * "$WINEPREFIX/../INSTALL"
cp doc/* "$WINEPREFIX/../doc"

# in winecfg, manually set windows version emulated to Windows XP, 
# otherwise wBridge5 save/load does not work
winecfg

# unzip the windows version of bcalc to the wine directory
unzip bcalc19080_win64.zip -d $WINEPREFIX
cd $WINEPREFIX

# unpack the windows version of bcalc
wine bcalcgui.exe 

cd ..

# now unpack the linux version, which will be the default version
# if the needed libraries are present
# on Ubuntu 20.04 this requires issuing the following command:
# sudo apt install -y wine liblua5.2-dev libqt5widgets5

# statically linking the linux binaries would allow portability
# to different Ubuntu versions and different distros
# but this remains to be done

mkdir LINUX
ls
cd ../installFiles/MON/

# windows version of bcalc works, now install linux version too
# linux version requires these librares to be loaded in linux:
# In ubuntu 20.04, the library names are: liblua5.2-dev libqt5widgets5
cp bcalc19080_linux_x86-64.tar.gz "$WINEPREFIX/../LINUX"
cd "$WINEPREFIX/../LINUX"
tar xzf bcalc19080_linux_x86-64.tar.gz 
 im installScript2.sh
 scid
 export WINEPREFIX=$PWD
 #install WED
 # copy contents of ../INSTALL/nibbler-1.4.5-windows and ../INSTALL/lc0_win to $WINEPREFIX
 # also copy ../INSTALL/Scid-4.7.0_x64_windows.exe to $WINEPREFIX
 ls
 winecfg
 # set winecfg graphics to emulate a virtual desktop at your desktop resolution
 ls
 wine Scid-4.7.0_x64_windows.exe 
 wine nibbler.exe 
 ls
 wine lc0.exe 
 ls
 cd drive_c/
 ls
 cd ..
 ls
 cp *.* drive_c
 cd drive_c/
 ls
 wine nibbler.exe 
 cd ../..
 rm -rf WP
 mkdir WP
 winecfg
 cd ..
 ls
 cd ..
 ls
 cd INSTALL/
 ls
 wine Scid-4.7.0_x64_windows.exe 
 echo $WINEPREFIX
 cd ../WP
 WINEPREFIX=$PWD
 cd ../INSTALL/
 ls
 wine Scid-4.7.0_x64_windows.exe 
 cd ..
 ls
 cd WP/
 cd drive_c/
 ls
 cd nibbler-1.4.5-windows/
 ls
 wine nibbler.exe 
 winecfg
 wine nibbler.exe 
 wine lc0.exe
 wine nibbler.exe 
 cd ..
 ls
 cd ../..
 ls
 rm -rf WP
 mkdir WP
 sudo apt-cache search blas | grep open
 unzip nibbler-1.4.5-linux.zip 
 unzip nibbler-1.4.5-windows.zip 
 cd ..
 ls
 cd WP
 ls
 export WINEPREFIX=$PWD
 cd ..
 ls
 cd INSTALL/
 ls
 cd nibbler-1.4.5-windows/
 ls
 wine nibbler.exe 
 cd ..
 ls
 wine Scid-4.7.0_x64_windows.exe 
 pwd
 ls
 cd ..
 ls
 cd WP/
 ls
 cd drive_c/
 ls
 cd Scid-4.7.0/
 ls
 cd bi
 cd bin/
 ls
 wine scid.exe 
 cd ../..
 ls
 cd nibbler/
 ls
 wine nibbler.exe 
 cd ..
 ls
 cd ../..
 ls
 cd INSTALL/
 ls
 cd nibbler-1.4.5-linux/
 ls
 sudo chmod +x nibbler 
 ls
 ./nibbler 
 vim installScript.sh
 scid
 export WINEPREFIX=$PWD
 cd ..
 ls
 wine "$WINEPREFIX/../INSTALL/nibbler-1.4.5-windows/nibbler.exe"
 ls
 ./nibbler 
 scid
 vim nibbler.sh 
 ls
 vim nibbler.sh 
 cp nibbler.sh scid.sh
 vim scid.sh 
 vim nibbler.sh 
 history > 200602WEDinstallHistory.txt
 ls
 rm wBridge5.sh bcalc.sh 
 ls
 # starting Mig Alley install
 export WINEPREFIX=$PWD/WP
 mkdir iso
 sudo mount -o loop ../installFiles/THU/Mig\ Alley\ V1.1.iso iso
 # mount Mig Alley CD
 cd iso
 ls
 # install from CD
 wine setup.EXE
 # install screen did not exit, so used <CTRL> C on command line after waiting
 # for install to finish
 # so game will run without CD, copy directory from CD and edit roots.dir file so all paths inside wine directory tree
 ls
 cp -R smacker/ ../WP/drive_c/rowan/mig/
 cd ../WP/drive_c/rowan/mig/
 vim roots.dir
 # all paths in roots.dir should be "C:\rowan\mig"
 # now apply the two patches
 cd $WINEPREFIX/../../installFiles
 cd THU
 cd Mig-Alley_Patch_Win_EN_Patch-123/
 ls
 cd Mig_Alley_patch_v1.23/
 ls
 vim readme.txt 
 wine MIG123.EXE 
 # needed to <CTRL> C again after installation
 cd ../..
 # now install community patch (BDG 0.85f)
 cd bdg_migalley_0.85f/
 ls
 vim readme_0.85F.html 
 firefox readme_0.85F.html 
 wine BDG_MiGAlley_0.85F.exe 
 cd ..
 # unpacked instructional replay videos into Mig Alley videos directory
 unzip IanDogfight.ZIP -d ../../THU/WP/drive_c/rowan/mig/Videos/
 # now make edits to some Mig Alley files
 cd ../../THU/WP/
 ls
 cd drive_c/
 ls
 cd rowan/
 ls
 cd mig/
 ls
 # use winetricks to add needed MS Windows libraries
 winetricks vcrun6
 winetricks directplay
 # disable mfc43 library file in Mig Alley directory
 mv mfc42.dll mfc42.dll_backup
 ls *.txt
 # if using Ubuntu linux, Ubuntu uses the key <ALT> F6 to restore keyboard focus to a window
 # this collides with Mig Alley, which uses this key for target to player view in the 3D environment
 # edit the keymap to bind target to player view to <CTRL> F6 instead
 ls
 cd KEYBOARD/
 ls
 cd ..
 find . -print | grep xml
 find . -print | grep XML
 echo $WINEPREFIX
 wine Mig.exe -NOINTRO
 ls
 ls smacker/
 cd smacker/
 vim DIR.DIR 
 cd ..
 # change smacker directory file permssion; was read-only
 sudo chmod -R 777 smacker/
 wine Mig.exe -NOINTRO
 wine Mig.exe
 vim roots.dir 
 wine Mig.exe -NOINTRO
 ls *.txt
 vim bdg.txt 
 # set INTRO_VIDEO to OFF in bdg.txt
 cd KEYBOARD/
 ls
 vim keys.xml
 cp keys.xml $WINEPREFIX/../../installFiles/THU/configFileChanges
 cd ..
 cp bdg.txt $WINEPREFIX/../../installFiles/THU/configFileChanges
 winecfg
 wine Mig.exe 
 # in preferences, set display resolution and other display setings to mx
 # set all options to highest settings: skill, physical realism etc
 # choose joystick in control settings
 r running Mig Alley for the first time, update a couple config file settings as follows:
 NEPREFIX/../../installFiles/THU/configFileChanges
# now copy the changed files into the mig directory via:
rsync -a mig/ ../../../THU/WP/drive_c/rowan/mig/
