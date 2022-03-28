#!/bin/sh
# 1. install artix-cinnamon-openRC then run 
# 2. run through this script, section by section


# upgdate / upgrade
sudo pacman -Syy
sudo pacman -Syu

# install basic shidd
sudo pacman -S --needed git base-devel

# 
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# install programs
yay -S librewolf-bin


# kill the beep sound
# this command needs to be saved into .bashrc or
# some startup script
sudo rmmod pcspkr
