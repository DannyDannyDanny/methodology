#!/bin/sh
# 1. install artix-cinnamon-openRC then run 
# 2. run through this script, section by section


# upgdate / upgrade
sudo pacman -Syy
sudo pacman -Syu

# install basic shidd
sudo pacman -S --needed git base-devel

# install AUR helper
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# install programs
yay -S librewolf-bin

# install zsh and omz and more
# https://medium.com/tech-notes-and-geek-stuff/install-zsh-on-arch-linux-manjaro-and-make-it-your-default-shell-b0098b756a7a


# kill the beep sound
# this command needs to be saved into .bashrc or
# some startup script
sudo rmmod pcspkr
