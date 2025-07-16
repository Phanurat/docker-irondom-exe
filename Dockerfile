FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# เปิด multiarch และติดตั้ง wine64 + wine32
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y \
    software-properties-common \
    wget \
    gnupg2 \
    ca-certificates \
    unzip \
    wine64 \
    wine32 \
    xvfb \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# เพิ่ม user ปลอดภัย
RUN useradd -ms /bin/bash wineuser
USER wineuser
WORKDIR /home/wineuser

# คัดลอกไฟล์ .exe และโฟลเดอร์
COPY acc001 ./acc001
COPY main333111.exe .

# ใช้ xvfb-run รัน wine แบบ headless (ไม่มี GUI จริง)
CMD ["xvfb-run", "--auto-servernum", "wine", "main333111.exe", "DBFOLDER=acc001"]
