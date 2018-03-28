#!/bin/bash

#ip=$(ifconfig | grep 'inet addr:' | grep -v '127.0.0.1' | grep -v 'inet addr:172.' | cut -c 21-35)

ip=$(hostname -I | cut -c 1-15 )

host=$(hostname)
echo Calculations Deskspace for "IP": $ip and The "Hostname": $host



d1=$(df -k . | awk '{ print $3 }')


d2=$(df -k . | tail -1 | awk '{ print $5 }')


d3=$(df -k . | tail -1 | awk '{ print $4 }')

echo The Complete Diskspace : $d1

echo The Use% Diskspace : $d2

echo The Available Diskspace : $d3
