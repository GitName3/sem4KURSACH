FROM maven:3.9.6-amazoncorretto-21-debian-bookworm AS build

ENV LANG C.UTF-8

WORKDIR /app

COPY pom.xml .

COPY src ./src

RUN mvn clean package -DskipTests

FROM openjdk:17-jdk-slim

ENV PORT=8080

COPY --from=build /app/target/*.jar /app/app.jar

COPY ./src/main/resources/*.sql /app/

ENV SPRING_DATASOURCE_URL=jdbc:postgresql://postgres:5432/pizzeria
ENV SPRING_DATASOURCE_USERNAME=postgres
ENV SPRING_DATASOURCE_PASSWORD=postgres

EXPOSE $PORT

CMD ["java", "-jar", "/app/app.jar"]