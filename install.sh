#!/bin/bash

# Download latest arch ISO

distrib=$(cat /etc/*-release | grep '^ID=' | sed 's/ID=\(.*\)/\L\1/');
#if[! $1 = 'archlinux-2022.04.05-x86_64.iso']
echo $distrib
if [[ $distrib == 'ubuntu' || $distrib == "debian" ]]
then
  apt install git zstd
fi
#git clone git@github.com:tokland/arch-bootstrap.git;
cp usb_script.sh arch-bootstrap/myarch/home/usb_script.sh
cd arch-bootstrap;
#install -m 755 arch-bootstrap.sh /usr/local/bin/arch-bootstrap;
#arch-bootstrap -a x86_64 myarch;
#mount --bind /proc myarch/proc;
#mount --bind /sys myarch/sys;
#mount --bind /dev myarch/dev;
#mount --bind /dev/pts myarch/dev/pts;
chroot myarch /home/usb_script.sh;
#chroot myarch;
