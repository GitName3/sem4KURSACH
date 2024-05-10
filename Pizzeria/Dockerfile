# Используем официальный образ OpenJDK 17
FROM maven:3.9.6-amazoncorretto-21-debian-bookworm AS build

# Установка переменной окружения для кодировки
ENV LANG C.UTF-8

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем Maven файлы проекта внутрь контейнера
COPY pom.xml .

# Копируем исходный код проекта внутрь контейнера
COPY src ./src

# Собираем проект с помощью Maven
RUN mvn clean package -DskipTests

# Устанавливаем базовый образ для выполнения приложения
FROM openjdk:17-jdk-slim

# Устанавливаем переменную окружения для указания на порт приложения
ENV PORT=8080

# Копируем собранный JAR файл из предыдущего образа в текущий образ
COPY --from=build /app/target/*.jar /app/app.jar

# Копируем файлы миграций базы данных внутрь контейнера
COPY ./src/main/resources/migrations/*.sql /app/migrations/

# Устанавливаем переменные окружения для настройки подключения к PostgreSQL
ENV SPRING_DATASOURCE_URL=jdbc:postgresql://postgres:5432/pizzeria
ENV SPRING_DATASOURCE_USERNAME=postgres
ENV SPRING_DATASOURCE_PASSWORD=postgres

# Устанавливаем порт, который будет открыт в контейнере
EXPOSE $PORT

# Команда для запуска Spring Boot приложения
CMD ["java", "-jar", "/app/app.jar"]