FROM ranjithr/mariohtml5

RUN apt update && apt install openssh-server -y \
 && echo "root:Docker!" | chpasswd 

COPY sshd_config /etc/ssh/
COPY init.sh /home/
ENTRYPOINT /home/init.sh
