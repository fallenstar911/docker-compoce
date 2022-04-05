FROM ubuntu:latest
RUN apt update
RUN DEBIAN_FRONTEND=nointeractive apt install maven git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git \
&& cd ./boxfuse-sample-java-war-hello && mvn package \
&& mkdir /var/shareprod && pwd \
&& cp ./target/*.war /var/shareprod/