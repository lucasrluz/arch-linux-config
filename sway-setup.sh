#!/bin/bash

sudo pacman -S --needed git neovim alacritty fish chromium thunar thunar-volman gvfs thunar-archive-plugin file-roller ttf-ibm-plex ttf-ibmplex-mono-nerd gcc lxappearance network-manager-applet

sudo pacman -S --needed sway wmenu swaybg

git clone https://github.com/lucasrluz/dotfiles.git
git clone https://github.com/lucasrluz/wallpaper.git

mv dotfiles/.config/ ~/

git config --global user.email "lucasrluz.23@gmail.com"
git config --global user.name "Lucas Ribeiro da Luz"

sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

# yay -S flat-remix-gtk flat-remix
