FROM ubuntu:latest

MAINTAINER k4

ENV DEBIAN_FRONTEND=noninteractive
RUN apt clean && apt -y update && apt install -y --no-install-recommends vim openvpn iptables openssh-server sudo && \
	useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo user1 && \
	useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo user2 && \
	echo user1:test1 | chpasswd && \
	echo 'user2:test2' | chpasswd && \
    mkdir -p /dev/net && \
    mknod /dev/net/tun c 10 200 && \
    chmod 600 /dev/net/tun 	&& \
    mkdir /var/run/sshd && \
    chmod 0755 /var/run/sshd	
COPY startup.sh .
COPY openvpn.conf /etc/openvpn
COPY sshd_config /etc/ssh/sshd_config

COPY iptables-save .

EXPOSE 2222
CMD ["/bin/bash","-c","./startup.sh"]
