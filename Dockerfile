FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y wine64 wine32 tzdata && \
    ln -fs /usr/share/zoneinfo/Asia/Bangkok /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . .

CMD DBFOLDER=acc001 wine main333111.exe && \
    DBFOLDER=acc002 wine main333111.exe && \
    DBFOLDER=acc003 wine main333111.exe && \
    DBFOLDER=acc004 wine main333111.exe && \
    DBFOLDER=acc005 wine main333111.exe && \
    DBFOLDER=acc006 wine main333111.exe && \
    DBFOLDER=acc007 wine main333111.exe && \
    DBFOLDER=acc008 wine main333111.exe && \
    DBFOLDER=acc009 wine main333111.exe && \
    DBFOLDER=acc010 wine main333111.exe

