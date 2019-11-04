FROM debian:latest

RUN adduser --disabled-password --gecos "" teamspeak
RUN mkdir /opt/teamspeak
RUN chown -R teamspeak:teamspeak /opt/teamspeak/

RUN chmod 0770 /opt/teamspeak/
RUN apt-get update && apt-get upgrade -y
RUN apt-get install tar -y && apt-get install bzip2 && apt-get install wget -y
RUN wget https://files.teamspeak-services.com/releases/server/3.9.1/teamspeak3-server_linux_amd64-3.9.1.tar.bz2

RUN tar -xjf teamspeak3-server_linux_amd64-3.9.1.tar.bz2 
RUN mv ./teamspeak3-server_linux_amd64/* /opt/teamspeak/
RUN rm -rf ~/teamspeak3-server_linux_amd64*
EXPOSE 9987/udp
EXPOSE 10011
EXPOSE 30033

ENV TS3SERVER_LICENSE=accept
WORKDIR /opt/teamspeak

ENTRYPOINT sh /opt/teamspeak/ts3server_minimal_runscript.sh