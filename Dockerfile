FROM jenkins
MAINTAINER Kiyotaka Oku

COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt

ADD jobs.tgz ${JENKINS_HOME}

USER root