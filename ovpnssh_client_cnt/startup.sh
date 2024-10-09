#!/bin/bash

if [ ! -f /root/.ssh/id_rsa ]; then
    ssh-keygen -q -t rsa -f ~/.ssh/id_rsa -N ''
fi
#ssh-keygen -q -t rsa -f ~/.ssh/id_rsa -N '' && \
route add -host <IP> gw 172.17.0.1
systemctl enable secure-tunnel.service && \
systemctl start secure-tunnel.service
openvpn --config /etc/openvpn/openvpn.conf 
