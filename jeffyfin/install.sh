#!/bin/bash

# install jellyfin on raspberrypi

apt update
apt full-upgrade

apt install apt-transport-https lsb-release -y
curl https://repo.jellyfin.org/debian/jellyfin_team.gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/jellyfin-archive-keyring.gpg >/dev/null
echo "deb [signed-by=/usr/share/keyrings/jellyfin-archive-keyring.gpg arch=$( dpkg --print-architecture )] https://repo.jellyfin.org/debian $( lsb_release -c -s ) main" | sudo tee /etc/apt/sources.list.d/jellyfin.list

apt update
apt install jellyfin -y
cd /opt
mkdir -p jellyfin/media

hostname -I


