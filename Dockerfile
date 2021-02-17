FROM registry.cto.ai/official_images/node:2-12.13.1-stretch-slim

WORKDIR /ops

ADD package.json .
ADD app.js .
ADD pages pages
ADD routes routes
ADD plugins plugins

RUN npm install --production

