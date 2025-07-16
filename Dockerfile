FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# ติดตั้ง Wine และ unzip
RUN dpkg --add-architecture i386 && \
    apt update && \
    apt install -y wine32 unzip

# ตั้ง working directory
WORKDIR /app

# คัดลอกไฟล์ทั้งหมดเข้า container
COPY . .
