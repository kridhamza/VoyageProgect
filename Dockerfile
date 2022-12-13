FROM adoptopenjdk/openjdk11
COPY target/ExamThourayaS2-0.0.1-SNAPSHOT.jar ExamThourayaS2-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/achat-1.0.jar"]
