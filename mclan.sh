#! /bin/bash

MESSAGE="[MOTD]$MOTD[/MOTD][AD]$PORT[/AD]"
echo "Broadcasting on LAN, press Ctrl+C to exit."

while :
do
    echo "$MESSAGE" | socat - UDP-DATAGRAM:255.255.255.255:4445,broadcast
    sleep 1
done
