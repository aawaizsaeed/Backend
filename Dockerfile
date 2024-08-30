FROM maven:3.8.6-jdk-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean install
FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY --from=build /app/target/spring-docker.jar app.jar
EXPOSE 9898
ENTRYPOINT ["java", "-jar", "app.jar"]
