
# sudo -iu teamspeak
su -l teamspeak
apt install wget -y
apt install tar -y
apt-get install bzip2 -y

wget http://dl.4players.de/ts/releases/3.0.13.8/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2
tar -xjf teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2
mv ~/teamspeak3-server_linux_amd64/* /opt/teamspeak/
rm -rf ~/teamspeak3-server_linux_amd64*
./opt/teamspeak/ts3server_startscript.sh start
reboot
systemctl start teamspeak3server
systemctl stop teamspeak3server
systemctl restart teamspeak3server
systemctl status teamspeak3server