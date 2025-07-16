FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN dpkg --add-architecture i386 && \
    apt update && \
    apt install -y wine32 unzip

WORKDIR /app

COPY . .

CMD ["wine", "main333111.exe"]
