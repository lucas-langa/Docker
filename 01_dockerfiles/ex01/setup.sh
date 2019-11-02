#create a user
# adduser --disable-password --gecos "" teamspeak
adduser --gecos "" teamspeak

#create a folder
mkdir /opt/teamspeak
chown teamspeak:teamspeak /opt/teamspeak/
chmod 0770 /opt/teamspeak/

#create a service script 

echo "
[Unit]
Description=Teamspeak 3 Server

[Service]
ExecStart=/opt/teamspeak/ts3server_startscript.sh start
ExecStop=/opt/teamspeak/ts3server_startscript.sh stop
PIDFile=/opt/teamspeak/ts3server.pid
Type=forking
User=teamspeak
Group=teamspeak

[Install]
WantedBy=multi-user.target" >> /etc/systemd/system/teamspeak3server.service

#set proper rights and reload systemctl daemon

chmod 664 /etc/systemd/system/teamspeak3server.service
echo "deb http://ftp.nl.debian.org/debian wheezy main contrib non-free
deb-src http://ftp.nl.debian.org/debian wheezy main contrib non-free

deb http://security.debian.org/ wheezy/updates main contrib non-free
deb-src http://security.debian.org/ wheezy/updates main contrib non-free

# wheezy-updates, previously known as 'volatile'
deb http://ftp.nl.debian.org/debian wheezy-updates main contrib non-free
deb-src http://ftp.nl.debian.org/debian wheezy-updates main contrib non-free" >> etc/apt/sources.list
apt-get update -y
apt-get dist-upgrade -y
apt install systemd -y
systemctl daemon-reload
systemctl enable teamspeak3server.service

#grant proper rights
echo "
#cmd alias specification
Cmnd_Alias TEAMSPEAK_CMDS = /bin/systemctl start teamspeak3server, /bin/systemctl stop teamspeak3server, /bin/systemctl restart teamspeak3server, /bin/systemctl status teamspeak3server

# User privilege specification
teamspeak ALL=NOPASSWD: TEAMSPEAK_CMDS, /sbin/reboot" >> /etc/sudoers