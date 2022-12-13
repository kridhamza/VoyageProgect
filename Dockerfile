FROM openjdk:8-jdk-alpine
EXPOSE 8089
ENV JAR_FILE=target/ExamThourayaS2-0.0.1-SNAPSHOT.ja
RUN mv ${JAR_FILE} /voyage.jar
ENTRYPOINT ["java","-jar","/voyage.jar"]
