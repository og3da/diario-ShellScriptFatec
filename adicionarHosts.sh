#!/bin/bash
CONT='s'
while [ "$CONT" == 's' ] || [ "$CONT" == 'S' ]
do
 echo -n 'IP: ' 
 read IP
 echo -n 'Host: ' 
 read NMAQ
 echo "$IP $NMAQ " >> /etc/hosts
 echo -n 'continuar [s/n]: '
 read CONT
done

echo -n 'Exibir hosts [s/n]: '
read OPC
if [ "$OPC" == 's' ] || [ "$OPC" == 'S' ]
then
 cat /etc/hosts
fi
echo 'ate logo'