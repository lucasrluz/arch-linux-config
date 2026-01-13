# Arch Linux Config

Repositório de uso pessoal com configurações do Arch Linux.

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
