FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY . .
RUN mvn clean install
COPY target/spring-docker.jar app.jar
EXPOSE 9898
ENTRYPOINT ["java", "-jar", "app.jar"]
