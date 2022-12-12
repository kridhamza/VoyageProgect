FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} voyage.jar
ENTRYPOINT ["java", "-jar" ,"/voyage.jar"]
EXPOSE 8089
