#!/bin/bash
mkdir tarz
#-
#- TOMCAT 8
#-
wget -q https://ftp.wayne.edu/apache/tomcat/tomcat-8/v8.5.57/bin/apache-tomcat-8.5.57.tar.gz -O ./tarz/apache-tomcat-8.5.57.tar.gz
tar -xf ./tarz/apache-tomcat-8.5.57.tar.gz -C /usr/local/tomcat8 --strip 1

#-
#- ERDDAP v2.02
#- 
wget -q https://github.com/BobSimons/erddap/releases/download/v2.02/erddapContent.zip -O ./tarz/erddapContent.zip
unzip ./tarz/erddapContent.zip

wget -q https://github.com/BobSimons/erddap/releases/download/v2.02/erddap.war
mv ./erddap.war webapps

cp ./doc/bin/setenv.sh ./bin/setenv.sh
cp ./doc/conf/context.xml ./conf/context.xml
cp ./doc/conf/server.xml ./conf/server.xml
cp ./doc/conf/web.xml ./conf/web.xml
cp ./doc/content/datasets.xml ./content/erddap/datasets.xml
cp ./doc/content/setup.xml ./content/erddap/setup.xml

