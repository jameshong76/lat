FROM jameshong76/centos7-systemd3:latest

### install apache 
RUN yum install -y httpd \
        curl

### install java 1.8 
RUN yum install java-1.8.0-openjdk-devel.x86_64 -y \ 
    && echo "access !!" > /var/www/html/index.html

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.222.b10-0.el7_6.x86_64
RUN $JAVA_HOME/bin/javac -version 2> javac.log

### install tomcat 
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

RUN wget http://mirror.navercorp.com/apache/tomcat/tomcat-8/v8.5.45/bin/apache-tomcat-8.5.45.tar.gz
RUN tar xvfz apache-tomcat-8.5.45.tar.gz \ 
    && mv apache-tomcat-8.5.45/ tomcat \
    && mv tomcat /usr/local

#COPY tomcat /usr/local
WORKDIR /usr/local

EXPOSE 80
EXPOSE 8080

COPY httpd-foreground /usr/local/bin/
COPY cmd.sh /usr/local/bin/

CMD ["cmd.sh"]
