#!/bin/sh
echo "buat suser"
apt-get update
adduser kel1
adduser kel2
adduser kel3
adduser kel4
adduser kel5
adduser kel6
adduser kel7
adduser kel8
adduser kel9
adduser kel10

echo "ganti usermod"
usermod -aG sudo kel1
usermod -aG sudo kel2
usermod -aG sudo kel3
usermod -aG sudo kel4
usermod -aG sudo kel5
usermod -aG sudo kel6
usermod -aG sudo kel7
usermod -aG sudo kel8
usermod -aG sudo kel9
usermod -aG sudo kel10

echo "jalankan installasi xrdp"
apt-get install xrdp

echo "jalankan start service xrdp"
systemctl start xrdp
systemctl start xrdp-sesman

echo "jalankan enable service xrdp"
systemctl enable xrdp
systemctl enable xrdp-sesman

