#!/bin/sh

dir=/usr/local/bin
dir_tomcat=/usr/local/tomcat/bin

httpd-foreground &

$dir_tomcat/catalina.sh start

/bin/bash
