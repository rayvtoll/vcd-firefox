chown -R $USER:$USER /home/$USER/
useradd -m $USER ; echo "$USER:$USER" | chpasswd
mkdir -p /home/$USER/.ssh
echo $KEY > /home/$USER/.ssh/authorized_keys
chown -R $USER:$USER /home/$USER/
sh -c /usr/sbin/sshd && tail -f /dev/null
