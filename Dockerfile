# ===== Stage 1: Build JAR =====
FROM maven:3.8.7-openjdk-8 AS builder
WORKDIR /app

COPY pom.xml
COPY src ./src

RUN mvn clean package -DskipTests

# ===== Stage 2: Runtime =====
FROM openjdk:8-jre-alpine
WORKDIR /app

COPY --from=builder /app/target/docker-java-app-example.jar /app/app.jar

EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
