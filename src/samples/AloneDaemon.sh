#!/bin/sh
#
# Small shell script to show how to start the sample services.
# That is for linux, if your are using cygwin look to ServiceDaemon.sh.
#
# Adapt the following lines to your configuration
JAVA_HOME=`echo $JAVA_HOME`
DAEMON_HOME=`(cd ../..; pwd)`
USER_HOME=`(cd ../../../..; pwd)`
TOMCAT_USER=`echo $USER`
CLASSPATH=\
$DAEMON_HOME/dist/commons-daemon.jar:\
$USER_HOME/commons-collections-2.1/commons-collections.jar:\
$DAEMON_HOME/dist/aloneservice.jar

$DAEMON_HOME/src/native/unix/jsvc \
    -home $JAVA_HOME \
    -cp $CLASSPATH \
    -pidfile ./pidfile \
    -debug \
    AloneService
#
# To get a verbose JVM
#-verbose \
# To get a debug of jsvc.
#-debug \
#    -user $TOMCAT_USER \