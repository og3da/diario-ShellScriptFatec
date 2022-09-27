#!/bin/bash
meu_ip=$(ip a)

function ipview()
{
    /etc/netplan/50-cloud-init.yaml
    sleep3
    ip a
}

echo -n -e '
1- IP \n
2- HOSTS \n
3- ip a \n
escolha uma opção: '

read OPC
case "$OPC" in
    1) ipview;;
    2) cat /etc/hosts;;
    3) echo "retorno ip a= \n $meu_ip";;
    *) echo "escolha uma opção válida";;
esac
echo
