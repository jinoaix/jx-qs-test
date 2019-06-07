# Dockerfile for adding plugins to Jenkins X
FROM jenkinsxio/jenkinsx:0.0.43

# commend mod to try kick off pipeline
COPY plugins.txt /usr/share/jenkins/ref/myplugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/myplugins.txt
