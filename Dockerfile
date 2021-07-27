FROM tomcat:10.0.8

# RUN sudo apt-get update && apt add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/HelloWorld.war ${PROJECT_HOME}/HelloWorld.war

WORKDIR ${PROJECT_HOME}

# CMD [""]