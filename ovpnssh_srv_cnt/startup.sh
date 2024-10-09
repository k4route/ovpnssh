#!/bin/bash

iptables-restore < iptables-save
/usr/sbin/sshd -D &
openvpn --config /etc/openvpn/openvpn.conf 
