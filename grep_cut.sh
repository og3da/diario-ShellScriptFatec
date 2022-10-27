#!/bin/bash

ipGateway=$(ip route | grep via | cut -d' ' -f3)
ipMaquina=$(ip a | grep global | cut -d' ' -f6 | cut -d'/' -f1)
ipDns1=$(systemd-resolve --status | grep 8.8 | cut -d':' -f2)
ipDns2=$(systemd-resolve --status | tail -n1)

echo
echo ' Ip da maquina: '$ipMaquina
echo ' Ip do gateway: '$ipGateway
echo ' DNS Server 1: '$ipDns1
echo ' DNS Server 2: '$ipDns2
echo
