#!/bin/sh

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

export CATALINA_HOME=/usr/local/tomcat8

export CATALINA_BASE=/usr/local/tomcat8

CONTENT_ROOT="-Dtds.content.root.path=/usr/local/tomcat8/content"

#NORMAL='-server -Xmx64000M -Xms64000M -d64'
NORMAL='-server -Xmx10g -Xms10g -d64 -XX:+UseG1GC -XX:+UseParallelGC -XX:+UseParallelOldGC -XX:MaxNewSize=512m'

HEADLESS="-Djava.awt.headless=true"

JAVA_PREFS="-Djava.util.prefs.systemRoot=$CATALINA_HOME/content/thredds/javaUtilPrefs -Djava.util.prefs.userRoot=$CATALINA_HOME/content/thredds/javaUtilPrefs"

CATALINA_OPTS="$NORMAL $CONTENT_ROOT $HEADLESS $JAVA_PREFS"

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CATALINA_HOME/lib

#export JAVA_OPTS='-server -Djava.awt.headless=true -Xmx8000M -Xms8000M'

