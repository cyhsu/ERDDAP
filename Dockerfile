FROM ubuntu:latest
MAINTAINER Chuan-Yuan Hsu <chsu1@tamu.edu>

ENV HOME /usr/local/tomcat8

#RUN apt-get -y update && apt-get -y upgrade 
RUN apt-get -y update && apt-get -y install unzip wget openjdk-8-jdk

#RUN apt-get -y install apt-utils unzip wget openjdk-8-jdk
#RUN apt install unzip wget w3m lsof openjdk-8-jdk -y

COPY ./installERDDAP.sh $HOME/installERDDAP.sh

RUN chmod +x $HOME/installERDDAP.sh

COPY ./doc $HOME/doc

WORKDIR $HOME

RUN $HOME/installERDDAP.sh

EXPOSE 8080
CMD ["./bin/catalina.sh","run"]
