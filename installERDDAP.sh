#!/bin/bash
homedir=$PWD

cd $homedir && mkdir tarz
#-
#- ERDDAP v2.02
#- 
wget -qq https://github.com/BobSimons/erddap/releases/download/v2.02/erddapContent.zip -O ./tarz/erddapContent.zip
unzip ./tarz/erddapContent.zip -d ${homedir}/

#wget -qq https://github.com/BobSimons/erddap/releases/download/v2.02/erddap.war -O ./tarz/erddap.war
#unzip ./tarz/erddap.war -d ${homedir}/erddap
wget -qq https://github.com/BobSimons/erddap/releases/download/v2.02/erddap.war

rm -rf ${homedir}/tarz

cp ./doc/content/datasets.xml ${homedir}/content/erddap/datasets.xml
cp ./doc/content/setup.xml ${homedir}/content/erddap/setup.xml

#-
#- mkdir a data folder under $HOME/data
#-
mkdir data

#- 
#- Build ERDDAP Docker Container
docker-compose up 
