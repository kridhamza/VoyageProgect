FROM openjdk:8-jdk-alpine
EXPOSE 8089
ENV JAR_FILE=target/*.jar
RUN mv ${JAR_FILE} /voyage.jar
ENTRYPOINT ["java","-jar","/voyage.jar"]
