FROM ubuntu:latest

# update ubuntu and set xterm for nano
ENV TERM xterm
RUN apt-get update
RUN apt-get -y upgrade

# tools
RUN apt-get install -y --allow-unauthenticated openjdk-8-jdk git nano maven mongodb

# for mongodb
RUN mkdir -p /data/db

# get taskmanager WS in git
RUN git clone https://github.com/fatercio/task-manager-exe5.git

# build project
RUN cd /task-manager-exe5 && mvn install

# run
RUN service mongodb restart
CMD java -jar /task-manager-exe5/target/boot-rest-api-0.1.jar

#Port
EXPOSE 8080