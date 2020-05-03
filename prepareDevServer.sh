# Add new User


# Install ssh-server
apt-get install openssh-server

# Restart ssh-server
systemctl restart sshd.service

# nano /etc/ssh/sshd_config

# Modify sshd_config
sed -i 's/#\?\(PerminRootLogin\s*\).*$/\1 no/' /etc/ssh/sshd_config
sed -i 's/#\?\(MaxAuthTries\s*\).*$/\1 4/' /etc/ssh/sshd_config
sed -i 's/#\?\(MaxSessions\s*\).*$/\1 3/' /etc/ssh/sshd_config
# sed -i 's/#\?\(PasswordAuthentication\s*\).*$/\1 no/' /etc/ssh/sshd_config

