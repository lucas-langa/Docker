
# sudo -iu teamspeak
su -l teamspeak


wget http://dl.4players.de/ts/releases/3.0.13.8/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2
tar -xjf teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2 
mv ./teamspeak3-server_linux_amd64/* /opt/teamspeak/
rm -rf ~/teamspeak3-server_linux_amd64*
env TS3SERVER_LICENSE=accept
# expose 9987/udp
# expose 10011
# expose 30033
./opt/teamspeak/ts3server_startscript.sh start
reboot
# service start teamspeak3server
# systemctl start teamspeak3server
# systemctl stop teamspeak3server
# systemctl restart teamspeak3server
# systemctl status teamspeak3server