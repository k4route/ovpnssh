FROM ubuntu:latest

MAINTAINER k4

ENV DEBIAN_FRONTEND=noninteractive
RUN apt clean && apt -y update && \
    apt install -y --no-install-recommends vim openvpn iptables openssh-server sudo systemctl && \
    apt install -y --no-install-recommends iputils-ping tcpdump net-tools && \
	echo "StrictHostKeyChecking accept-new" >> /etc/ssh/ssh_config

COPY openvpn.conf /etc/openvpn/openvpn.conf
COPY secure-tunnel.service /etc/systemd/system/secure-tunnel.service
COPY startup.sh .

CMD ["/bin/bash","-c","./startup.sh"]
