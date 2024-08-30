FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY target/spring-docker.jar app.jar
EXPOSE 9898
ENTRYPOINT ["java", "-jar", "app.jar"]
