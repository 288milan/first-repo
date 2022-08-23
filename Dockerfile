FROM openjdk:11
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app_jar
ENTRYPOINT ["java","-jar","/app.jar"]
