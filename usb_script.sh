#!/bin/bash

# why systemd ? https://www.reddit.com/r/archlinux/comments/4lzxs3/why_did_archlinux_embrace_systemd/
pacman -S reflector;
reflector -c France -a 6 --sort rate --save /etc/pacman.d/mirrorlist
pacman -Syyy gzip iproute;
loadkeys  fr;
pacman -S iwd git;
pacman -S wayland;
