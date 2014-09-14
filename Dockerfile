# dockerfile
FROM fly0wing/docker-first
MAINTAINER fly0wing <fly0wing@126.com>

#install oracle java
RUN wget --no-cookies \
         --no-check-certificate \
         --header "Cookie: oraclelicense=accept-securebackup-cookie" \
         "http://download.oracle.com/otn-pub/java/jdk/8u20-b26/jdk-8u20-linux-x64.rpm" \
         -O /var/tmp/jdk-8-linux-x64.rpm  && \
    yum localinstall -y /var/tmp/jdk-8-linux-x64.rpm && \
    rm /var/tmp/* -rf && yum clean all

ENV JAVA_HOME /usr/java/default