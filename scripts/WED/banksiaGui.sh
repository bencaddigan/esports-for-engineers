#!/usr/bin/bash
clear
echo "BanksiaGui requires the linux INSTALL/lc0_cpu binary, which requires the openblas library."
echo "if using Ubuntu 20.04 LTS, prior to running BanksiaGui.sh execute the following linux command:"
echo "sudo apt install -y libopenblas-dev"
echo ""
echo "See optionalLinuxNativeInstall.txt for details."

./INSTALL/BanksiaGui/BanksiaGui.sh 2>/dev/null 1>/dev/null

