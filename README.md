   ERDDAP on Docker Container 
==============================


ERDDAP is a data server, which has been widely used in the geoscience field. It handles the various types of datasets, including but not only the gridded dataset (e.g. netCDF) and the tabular dataset (e.g. underwater survey). ERDDAP is constructed by TOMCAT and JAVA, and specific request to use tomcat8 and java8. You can go to [ERDDAP  Official Site](https://coastwatch.pfeg.noaa.gov/erddap/index.html) for detailed information. I will also update my learning note in my GitHub site to newborns to learn. 

ERDDAP is useful for all of the regional institutes, and the organization that plays a role as a data center. It is also the base of other geoscience data services, e.g. the TDS/WMS server. Also, by the official document what it suggests that the administrator of an ERDDAP should have another ERDDAP service as a developer to deal with your datasets first. This is mainly caused by time-wasting on the I/O. ERDDAP also needs some efforts and time to work on the installation. Thus why a docker container is a good option. Here, a docker container for ERDDAP is built. The ERDDAP container mounts the necessary folders with local storage space. I hope this will help us to deal with the datasets.    


## Table of Contents  
- [Requirements](https://github.com/cyhsu/ERDDAP#requirements)  
- [Procedures](https://github.com/cyhsu/ERDDAP#procedures)  
   - [Installation](https://github.com/cyhsu/ERDDAP#installation)   
   - [execute in container](https://github.com/cyhsu/ERDDAP#execute-in-container)  
- [Get in touch](https://github.com/cyhsu/ERDDAP#get-in-touch)



### Requirements
Before you move on, you have to have docker and docker-compose. Please go to [docker official site](https://docs.docker.com/get-docker/) for the installation. 

### Procedures  

### Installation   
#### install by docker-compose   
```
	./installERDDAP.sh
```
#### install by Dockerfile
```
   wget -qq https://github.com/BobSimons/erddap/releases/download/v2.02/erddapContent.zip -O ./tarz/erddapContent.zip
   unzip ./tarz/erddapContent.zip -d ${homedir}/
   wget -qq https://github.com/BobSimons/erddap/releases/download/v2.02/erddap.war
   docker image build -t erddap .
   docker run -itd -e DISPLAY \
         -v {$PWD}/data:/usr/local/tomcat8/data \
	 -v {$PWD}/content:/usr/local/tomcat8/content \
	 -v {$PWD}/erddap.war:/usr/local/tomcat8/webapps/erddap.war \
         -p 8888:8080 --name erddap erddap
```
### execute in container   
```
   docker exec -it erddap bash
```

### Get-in-touch

Report bugs, suggest features or view the source code on [GitHub](https://github.com/cyhsu/ERDDAP/issues).

