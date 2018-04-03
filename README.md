Docker Image for Minecraft server LAN discovery

Set variables to customize
- PORT: minecraft server port
- MOTD: title of server 

mclan.sh will loop to advertise server on LAN over UDP packets.
You need to add --net host to make this work to Docker command line.

Example:
docker run -e 'PORT=25565' -e 'MOTD=My cool MC server' --net host cina/mclan
