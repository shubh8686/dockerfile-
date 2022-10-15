FROM centos
RUN yum install java
Run  mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://downloads.apache.org/tomcat/tomcat-10/v10.0.27/bin/apache-tomcat-10.0.27.tar.gz.asc
RUN tar -xvzf apache-tomcat-10.0.27.tar.gz.asc
RUN mv apache-tomcat-10.0.27/* /opt/tomcat
CMD ["/opt/tomcat/bincatalina.sh","run"]
