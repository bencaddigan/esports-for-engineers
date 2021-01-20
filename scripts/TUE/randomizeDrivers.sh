#!/bin/bash
# randomize drivers such that you're racing against different drivers each race
# (assuming you choose 10 or fewer computer opponents)

# if you race against all the computer opponents, of course you'll be 
# racing against the same opponents every time

# the fastest 5 drivers are last in the list, so if you choose 14 or fewer
# computer drivers you will never race against the fastest ones.

export WINEPREFIX=$PWD/WP

cd $WINEPREFIX/drive_c/Sierra/GPL/originalDriverIniFiles

#randomizes all driver files except 'dr66CA - Elvis.ini'  'dr66CA - Gates.ini' 'dr66CA - Entin.ini'

python3 randomizeDrivers.py dr66CA.ini > ../dr66CA.ini   
python3 randomizeDrivers.py dr71CA.ini > ../dr71CA.ini    
python3 randomizeDrivers.py driv55.ini > ../driv55.ini    
python3 randomizeDrivers.py driv65.ini > ../driv65.ini    
python3 randomizeDrivers.py driv66.ini > ../driv66.ini    
python3 randomizeDrivers.py driver.ini > ../driver.ini    
python3 randomizeDrivers.py drivF2.ini > ../drivF2.ini    
python3 randomizeDrivers.py drivSC.ini > ../drivSC.ini    
python3 randomizeDrivers.py drvc67.ini > ../drvc67.ini    
python3 randomizeDrivers.py drvc69.ini > ../drvc69.ini    
python3 randomizeDrivers.py drvl68.ini > ../drvl68.ini    
python3 randomizeDrivers.py drvy67.ini > ../drvy67.ini 

