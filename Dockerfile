FROM ubuntu:latest
MAINTAINER Franke Hsu "chsu1@tamu.edu"

ENV HOME /usr/local/tomcat8

#RUN apt-get -y update && apt-get -y upgrade 
RUN apt-get -y update && apt-get -y install unzip wget openjdk-8-jdk

#RUN apt-get -y install apt-utils unzip wget openjdk-8-jdk
#RUN apt install unzip wget w3m lsof openjdk-8-jdk -y
##
##COPY ./installERDDAP.sh $HOME/installERDDAP.sh
##
##COPY ./doc $HOME/doc

COPY . $HOME/

RUN chmod +x $HOME/installERDDAP.sh

WORKDIR $HOME

RUN mkdir happy

RUN ./installERDDAP.sh
#RUN $HOME/installERDDAP.sh

EXPOSE 8080 8443 8009
#ENTRYPOINT ["tail", "-f", "/dev/null"] 
CMD ["catalina.sh","run"]
