FROM openjdk:8-jre-slim
MAINTAINER Harshabh Mahant
RUN mkdir /usr/src/myapp
COPY target/ExecutableCalculator-1.0-SNAPSHOT.jar /usr/src/myapp
WORKDIR /usr/src/myapp
CMD ["java","-cp","ExecutableCalculator-1.0-SNAPSHOT.jar","MainCalc"]

