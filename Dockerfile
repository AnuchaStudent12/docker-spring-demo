# ใช้ OpenJDK 8 JRE บน Alpine
FROM openjdk:8-jre-alpine

# ติดตั้ง bash (ไม่จำเป็นสำหรับ production แต่ช่วยดีบั๊กได้)
RUN apk update && apk add --no-cache bash

# สร้าง working directory
WORKDIR /app

# คัดลอกไฟล์ JAR ของโปรเจกต์
COPY target/docker-java-app-example.jar /app/

# เปิด port 8080 (Render ใช้ PORT จาก environment)
EXPOSE 8080

# กำหนด command เพื่อรันแอป
CMD ["java", "-jar", "docker-java-app-example.jar"]
