#
# Build stage
#
FROM maven:3.6.1-jdk-8-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

#
# Package stage
#
FROM openjdk:8-jre-slim
COPY --from=build /home/app/target/ExecutableCalculator-1.0-SNAPSHOT.jar /usr/local/lib/ExecutableCalculator-1.0-SNAPSHOT.jar
EXPOSE 8080
#ENTRYPOINT ["java","-jar","/usr/local/lib/ExecutableCalculator-1.0-SNAPSHOT.jar"]
RUN java -jar /usr/local/lib/ExecutableCalculator-1.0-SNAPSHOT.jar
