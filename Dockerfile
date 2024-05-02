FROM node:20.12.2

WORKDIR /app

COPY app/package*.json ./

RUN npm install && apt-get update && apt-get install -y make

COPY app/ ./