#!/bin/bash

# Add new User
#useradd -m -c "gkiraly" -s /bin/bash gkiraly

# set password for user
#passwd gkiraly

# Add user to sudoers
# visudo
# add the following line to the sudoers file
# User privilege specification

sudo sed -i '/User privilege specification/a gkiraly  ALL\=\(ALL\) ALL' /etc/sudoers
#sudo sed -Ei 's/^#(User privilege specification.*)/a gkiraly  ALL=(ALL) ALL' /etc/sudoers

# sed '/^anothervalue=.*/a after=me' test.txt
# sudo sed -Ei 's/^#(%saptb.*SU_ROOT.*)/\1/' /etc/sudoers

# s/         # Substitution
# ^          # Match the start of the line
# (          # Capture the following
# %saptb     # Followed by %saptb
# .*         # Followed by anything
# SU_ROOT    # Followed by SU_ROOT
# .*         # Followed by anything
# )          # Close capture
# /          # Replace with 
# #          # A hash 
# \1         # Followed by the captured line


# mykey=one
# anothervalue=two
# after=me
# lastvalue=three

# Install ssh-server
#apt-get install openssh-server

# Restart ssh-server
#systemctl restart sshd.service

# nano /etc/ssh/sshd_config

# Modify sshd_config
#sed -i 's/#\?\(PerminRootLogin\s*\).*$/\1 no/' /etc/ssh/sshd_config
#sed -i 's/#\?\(MaxAuthTries\s*\).*$/\1 4/' /etc/ssh/sshd_config
#sed -i 's/#\?\(MaxSessions\s*\).*$/\1 3/' /etc/ssh/sshd_config
# sed -i 's/#\?\(PasswordAuthentication\s*\).*$/\1 no/' /etc/ssh/sshd_config

