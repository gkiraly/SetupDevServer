#!/bin/bash

# Add new User
#useradd -m -c "gkiraly" -s /bin/bash gkiraly

# set password for user
#passwd gkiraly

# Add user to sudoers
# visudo
# add the following line to the sudoers file
# User privilege specification

#sudo sed -i '/User privilege specification/a gkiraly  ALL\=\(ALL\) ALL' /etc/sudoers

# Install ssh-server
apt-get install openssh-server

# Restart ssh-server
systemctl restart sshd.service

# nano /etc/ssh/sshd_config

value=$( sudo systemctl status sshd.service | grep -ic "Active: active (running)" )

echo "DEBUG $value"

#if [ $value -eq 1 ]
#then
#  echo "ACTIVE"
#else
#  echo "NOT ACTIVE"
#fi

while [ $value -eq 0 ]
do
	sleep 5
	echo "Getting ssh daemon status ..."
done

echo "Modify sshd_config ..."

# Modify sshd_config
#sed -i 's/#\?\(PerminRootLogin\s*\).*$/\1 no/' /etc/ssh/sshd_config
#sed -i 's/#\?\(MaxAuthTries\s*\).*$/\1 4/' /etc/ssh/sshd_config
#sed -i 's/#\?\(MaxSessions\s*\).*$/\1 3/' /etc/ssh/sshd_config
#sed -i 's/#\?\(PasswordAuthentication\s*\).*$/\1 no/' /etc/ssh/sshd_config

echo "D O N E ! ! !"

