#!/bin/bash

echo "hello, HaVoK!"
echo " taking down wlan0"
ifconfig wlan0 down
sleep 3

echo "setting Region to Bolivia"
iw reg set BO
sleep 3

echo "setting TxPower to 27"
iwconfig wlan0 txpower 27
sleep 2

echo "starting wlan0"
ifconfig wlan0 up
echo "pulling wlan0 interface up"
iwconfig
echo "pulling mon0 interface up"
airmon-ng start wlan0
echo "setting mon0 on channel 3"
iwconfig mon0 channel 3
sleep 2

sleep 1

echo "time time"
