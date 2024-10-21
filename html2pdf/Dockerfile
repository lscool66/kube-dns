FROM --platform=linux/arm64/v8 node:lts

LABEL MAINTAINER=lscool66@outlook.com

USER root

RUN mkdir -p /app

WORKDIR /app

COPY package*.json ./

COPY . .

RUN npm instal

EXPOSE 3000

ENTRYPOINT ["node", "main.js", "3000"]

