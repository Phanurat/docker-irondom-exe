FROM ubuntu:20.04

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y wine32 wget

WORKDIR /app

ENV DBFOLDER=acc001

CMD ["wine", "main333111.exe"]
