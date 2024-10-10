#!/bin/bash

if [ ! -f /root/.ssh/id_rsa ]; then
    ssh-keygen -q -t rsa -f ~/.ssh/id_rsa -N ''
fi
#ssh-keygen -q -t rsa -f ~/.ssh/id_rsa -N '' && \
route add -host 176.31.162.173 gw 192.168.3.1
systemctl enable secure-tunnel.service && \
systemctl start secure-tunnel.service
openvpn --config /etc/openvpn/openvpn.conf 
