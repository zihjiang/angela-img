#/usr/bin/env bash
 
 
#----------------------------
IP="$(ifconfig | grep -v 'eth0:' | grep -A 1 'ppp0' | tail -1 | cut -d ':' -f 2 | cut -d ' ' -f 4)"
echo "Your network information is as below:"
echo $IP

route add 10.28.0.1/24 $IP

route add 10.48.0.1/24 $IP

route add 10.78.0.1/24 $IP

route add 10.86.12.1/24 $IP

route add 10.54.0.1/24 $IP 

