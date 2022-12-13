FROM adoptopenjdk/openjdk11
COPY target/ExamThourayaS2.jar ExamThourayaS2.jar
ENTRYPOINT ["java","-jar","/ExamThourayaS2.jar"]
