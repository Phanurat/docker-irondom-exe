FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# ติดตั้ง Wine และเครื่องมือที่จำเป็น
RUN apt-get update && apt-get install -y \
    software-properties-common \
    wget \
    gnupg2 \
    ca-certificates \
    unzip \
    wine64 \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# สร้าง user ปลอดภัย
RUN useradd -ms /bin/bash wineuser
USER wineuser
WORKDIR /home/wineuser

# คัดลอกไฟล์เข้า container
COPY acc001 ./acc001
COPY main333111.exe .

# สั่งรัน .exe โดยไม่มี GUI
CMD ["wine", "main333111.exe", "DBFOLDER=acc001"]
