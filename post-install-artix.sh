#!/bin/sh
# run as root
pacman -Syy
pacman -Syu

# the following commands are run manually
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
