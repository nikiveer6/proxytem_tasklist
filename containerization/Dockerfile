FROM ubuntu:16.04
FROM tomcat:8.0
MAINTAINER Proxytem Software Services pvt.ltd
RUN apt-get update
RUN apt-get install -y vim
RUN apt-get install -y git
RUN apt-get install -y openssh-server
RUN apt-get install -y sudo
RUN apt-get install -y net-tools
RUN cd /usr/local/tomcat/webapps/ && wget http://192.168.31.200:8081/nexus/service/local/repositories/releases/content/com/gamutgurus/gamutkart/1.0/gamutkart-1.0.war
#COPY ${WORKSPACE}/target/gamutkart.war /usr/local/tomcat/webapps
ENTRYPOINT /usr/local/tomcat/bin/startup.sh && bash
