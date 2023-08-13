FROM node:18.16.0
LABEL authors="user"
      description="random description"
      title="first docker container"

RUN mkdir -p /usr/src/app

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN npm install

ENDPOINT ["node","index.js"]