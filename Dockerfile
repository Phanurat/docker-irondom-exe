FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# ติดตั้ง Wine
RUN dpkg --add-architecture i386 && \
    apt update && \
    apt install -y wine32 unzip

WORKDIR /app

# คัดลอกไฟล์ทุกอย่างเข้าไปใน container
COPY . .
