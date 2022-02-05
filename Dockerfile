FROM ubuntu:latest
ENV TZ=Europe/Moscow
RUN apt update && apt install -y default-jdk tomcat9 maven git && git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
EXPOSE 8080
RUN cd /home/ubuntu/boxfuse-sample-java-war-hello/ && RUN mvn package
COPY /home/ubuntu/boxfuse-sample-java-war-hello/target/hello-1.0.war /var/lib/tomcat9/webapps/