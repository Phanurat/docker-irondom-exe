FROM wine/wine:latest

WORKDIR /app
COPY . .

ENV WINEDEBUG=-all
ENV DBFOLDER=acc001
ENV EXE_NAME=main333111.exe

CMD ["sh", "-c", "wine $EXE_NAME"]
