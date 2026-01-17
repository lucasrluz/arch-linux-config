#!/bin/bash

# Instalação de pacotes para visualização e definição de configuração de desemprenho
sudo pacman -S --needed acpi tlp

# TRIM
sudo systemctl enable fstrim.timer
sudo systemctl start fstrim.timer

# TLP
sudo systemctl enable tlp.service
sudo systemctl start tlp.service
sudo systemctl mask systemd-rfkill.service systemd-rfkill.socket

sudo cp dotfiles/etc/tlp.conf /etc/tlp.conf

sudo tlp start
