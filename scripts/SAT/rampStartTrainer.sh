#!/bin/bash

$PWD/INSTALL/checkWineVersion.sh 2>/dev/null 1>/dev/null
if [ $? -ne 0 ]; then
        exit 1
fi

export WINEPREFIX="$PWD/WP"

if [ -d "$WINEPREFIX/drive_c/FreeFalcon6/Docs/SP3" ]
then
  cd $WINEPREFIX/drive_c/FreeFalcon6/Docs/SP3
  wine sp3_ramp_start_trainer.exe 2>/dev/null 1>/dev/null
  exit 0
else
  echo "run ./FreeFalcon.sh first"
  echo "the trainer isn't installed until you've run FreeFalcon.sh at least once."
  exit 1
fi

