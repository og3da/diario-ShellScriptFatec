#!/bin/bash
# se digitar diferente de -h ou +1 paramtro, retorna msg de erro
clear
echo

if [ "$#" -gt 1 ]
then
 echo 'erro'

elif [ "$1" == "-h" ]
then
 echo 'Este é um programa que exibe informações de redes'

elif [ "$#" -eq 0 ]
    then
    echo -n '
    1- ver ip
    2- tabela host
    3- info de roteamento 
    4- info de slots pci: '
    read OPC

    case "$OPC" in
    1) ip a;;
    2) cat /etc/hosts;;
    3) ip route;;
    4) lspci;;
    *) echo 'opcao invalida';;
    esac

else
 echo 'erro'
fi
