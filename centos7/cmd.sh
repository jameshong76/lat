#!/bin/sh

dir=/usr/local/bin
dir_tomcat=/usr/local/tomcat/bin

httpd-foreground &

## run tomcat foreground !!
$dir_tomcat/catalina.sh run
