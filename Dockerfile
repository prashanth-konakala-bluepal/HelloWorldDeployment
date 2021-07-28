FROM tomcat:8
MAINTAINER prashanth

ADD /target/*.war /usr/local/tomcat/webapps/hello_world_deployment.war
#COPY /target/*.war /usr/local/tomcat/webapps/hello_world_deployment.war
#COPY /var/lib/jenkins/workspace/Docker_Image_pulling/webapp/target/*.war /usr/local/tomcat/webapps/hello_world_deployment.war



#ROM ubuntu:latest
#MAINTAINER prashanth

#RUN apt-get update
#RUN apt-get upgrade 
#RUN apt-get -y install openjdk-11-jdk wget
#RUN mkdir /usr/local/tomcat
#RUN wget http://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.16/bin/apache-tomcat-8.5.16.tar.gz -O /tmp/apache-tomcat-8.5.16.tar.gz
#RUN cd /tmp 
#RUN tar -xvfz apache-tomcat-8.5.16.tar.gz
#RUN cp -Rv /tmp/apache-tomcat-8.5.16/* /usr/local/tomcat/

#COPY /var/lib/jenkins/workspace/Docker_Image_pulling/webapp/target/*.war /usr/local/tomcat/webapps/hello_world_deployment.war

#EXPOSE 8080
#CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]

#RUN mkdir -p /opt/app
#ENV PROJECT_HOME /opt/app

#COPY target/HelloWorld.war ${PROJECT_HOME}/HelloWorld.war

#WORKDIR ${PROJECT_HOME}

# CMD [""]