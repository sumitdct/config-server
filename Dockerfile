# The Docker file
FROM openjdk:8-jdk-alpine
MAINTAINER SUMIT CHOUKSEY "sumitchouksey2315@gmail.com"
ADD /target/config-server.jar config-server.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/config-server.jar"]