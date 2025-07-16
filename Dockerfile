FROM ubuntu:20.04

# เพิ่ม 32-bit arch, ติดตั้ง wine และ tzdata (สำหรับ timezone)
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y wine32 tzdata wget && \
    rm -rf /var/lib/apt/lists/*

# ตั้ง timezone เป็น Asia/Bangkok
ENV TZ=Asia/Bangkok
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /app

ENV DBFOLDER=acc001

CMD ["wine", "main333111.exe"]
