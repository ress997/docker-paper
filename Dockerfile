FROM openjdk:8-alpine

ENV VERSION 1.15.2

EXPOSE 25565
WORKDIR /mc

RUN curl -SL "https://papermc.io/api/v1/paper/1.15.2/latest/download" -o paper.jar
WORKDIR /data

ENTRYPOINT java -jar /mc/paper.jar nogui
