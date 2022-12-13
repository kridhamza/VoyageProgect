FROM openjdk:8-jdk-alpine
EXPOSE 8089
ADD target/ExamThourayaS2.jar ExamThourayaS2.jar
ENTRYPOINT ["java","-jar","/sxamthourayas2.jar"]
