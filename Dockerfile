FROM node:18-alpine

EXPOSE 9080

WORKDIR /usr/src

COPY package*.json ./

COPY webpack.config.js ./

RUN yarn install
