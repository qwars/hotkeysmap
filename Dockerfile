FROM node:18-alpine

EXPOSE 9090

WORKDIR /usr/src

COPY .npmrc ./

COPY .yarnrc ./

COPY package*.json ./

COPY webpack.config.js ./

RUN yarn install
