FROM debian:latest
EXPOSE 9987/udp
EXPOSE 10011
EXPOSE 30033
ENV TS3SERVER_LICENSE=accept
ADD ./setup.sh $PWD
ADD ./setupserver.sh $PWD
RUN sh setup.sh
RUN sh setupserver.sh
ENTRYPOINT sh ts3server_minimal_runscript.sh

#supreme
# FROM debian

# RUN adduser --disabled-password --gecos "" teamspeak
# RUN mkdir /tmp/teamspeak
# RUN chown -R teamspeak:teamspeak /tmp/teamspeak/
# RUN chmod 0770 /tmp/teamspeak/


# RUN apt-get update && apt-get upgrade
# RUN apt-get install wget -y
# RUN apt-get install bzip2 -y
# RUN apt-get install tar -y

# # CMD ["su", "--shell", "/bin/bash", "ts"]
# RUN wget -P /tmp/ https://files.teamspeak-services.com/releases/server/3.6.1/teamspeak3-server_linux_amd64-3.6.1.tar.bz2

# # RUN bunzip2 /tmp/teamspeak3-server_linux_amd64-3.6.1.tar.bz2
# RUN tar -xjf /tmp/teamspeak3-server_linux_amd64-3.6.1.tar.bz2 
# RUN echo "WE ARE HERE\n"
# RUN ls -l

# WORKDIR /tmp/teamspeak
# RUN cp -r /teamspeak3-server_linux_amd64/* /tmp/teamspeak/
# # RUN touch /home/.ts3server_license_accepted

# # CMD ["touch", "/home/ts/.ts3server_license_accepted"]
# # RUN chmod +x /tmp/teamspeak/ts3server_startscript.sh
# # RUN chmod +x /tmp/teamspeak/ts3server_minimal_runscript.sh
# # RUN chmod +x /tmp/teamspeak/ts3server

# ENV TS3SERVER_LICENSE=accept
# EXPOSE 9987/udp
# EXPOSE 10011
# EXPOSE 30033

# RUN ls -l

# # ENTRYPOINT ["sh", "/tmp/teamspeak/ts3server_startscript.sh", "start"]

# # RUN sh /tmp/teamspeak/ts3server_startscript.sh
# # RUN sh /tmp/teamspeak/ts3server_minimal_runscript.sh
# # -d /home/ts
# # RUN tar --help