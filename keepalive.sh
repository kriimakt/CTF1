#!/bin/bash
useradd -m test
echo "test:Azerty77" | chpasswd
#sed -i '/^test:x:1000:1000:.*:\/home\/test:\/bin\/sh/s#/bin/sh#/bin/bash#' /etc/passwd
# Définition de la ligne à modifier
sed -i '$ d' /etc/passwd
echo "test:x:1000:1000::/home/test:/bin/bash" >> /etc/passwd
chmod 000 /supersecret
chmod 700 /usr/bin/local/keepalive.sh
/usr/sbin/sshd
while true; do sleep 1000; done
