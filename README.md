# Arch Linux Config

Este repositório é pessoal, portando as configurações são específicas para o meu ambiente Linux.

Para aplicar as configurações:

`$ ./setup.sh`

Após a finalização da execução do script verifique se tudo foi habilitado corretamente

## TRIM

`$ systemctl status fstrim.timer`

É possível forçar a execução com `$ sudo fstrim -v /`, deve retornar algo como `/: XX GiB (YY bytes) trimmed`.

## TLP

`$ tlp-stat -s`

Deve mostrar algo como:

```
+++ TLP Status
State = enabled
```

## Yay

`sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si`
