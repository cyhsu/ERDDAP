FROM ubuntu:latest
MAINTAINER Franke Hsu "chsu1@tamu.edu"

ENV HOME /usr/local/tomcat8

RUN apt-get -y update #&& apt-get -y upgrade
RUN apt-get -y install unzip wget vim w3m openjdk-8-jdk

ENV ERDDAP_VERSION=8.5.57

ENV TOMCAT_NAME=apache-tomcat-${ERDDAP_VERSION}.tar.gz

ENV ERDDAP_URL https://ftp.wayne.edu/apache/tomcat/tomcat-8/v${ERDDAP_VERSION}/bin/${TOMCAT_NAME} 

WORKDIR $HOME

RUN wget ${ERDDAP_URL} -O ${TOMCAT_NAME}

RUN tar -xf ${TOMCAT_NAME} -C $HOME --strip 1 && rm ${TOMCAT_NAME}

COPY ./doc $HOME/doc

RUN cp ./doc/bin/setenv.sh ./bin/setenv.sh
RUN cp ./doc/conf/context.xml ./conf/context.xml
RUN cp ./doc/conf/server.xml ./conf/server.xml
RUN cp ./doc/conf/web.xml ./conf/web.xml

EXPOSE 8080 8443 8009

CMD ["service","/usr/local/tomcat8/bin/catalina.sh","run"]
