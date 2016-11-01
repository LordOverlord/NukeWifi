#!/bin/bash
#DoS Wifi by Overlord
echo Bringing Online Wifi Weapons
#This will check the wireless interfaces
wlan = $(ifconfig | grep wlan)
if wlan == null then
echo "There's no wifi on this machine dude"
else 
for i in {0..10}; do ifconfig wlan${i} up; done
