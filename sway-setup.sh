#!/bin/bash

# Instalação de pacotes básicos de aplicações, fontes e serviços
sudo pacman -S --needed git neovim alacritty fish ttf-ibm-plex ttf-ibmplex-mono-nerd gcc network-manager-applet

# Instalação de pacotes para audio
sudo pacman -S --needed pipewire pipewire-audio pipewire-alsa pipewire-pulse

# Instalação de pacotes relacionados ao ambiente gráfico
sudo pacman -S --needed sway rofi swaybg xorg-xwayland

# Clone do repositório de dotfiles e wallpapers
git clone https://github.com/lucasrluz/dotfiles.git
git clone https://github.com/lucasrluz/wallpaper.git

# Movendo os arquivos de configuração
mkdir ~/.config

mv dotfiles/.config/sway ~/.config/
mv dotfiles/.config/alacritty ~/.config/
mv dotfiles/.config/fish ~/.config/
mv dotfiles/.config/nvim ~/.config/

# Configuração do git
git config --global user.email "lucasrluz.23@gmail.com"
git config --global user.name "Lucas Ribeiro da Luz"

# Instalação do yay
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

# Instalação de pacotes via yay
yay -S google-chrome pipemixer
