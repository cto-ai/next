############################
# Final container
############################
FROM registry.cto.ai/official_images/node:2-12.13.1-stretch-slim

WORKDIR /ops
USER ops:9999

ADD --chown=ops:9999 package.json .
ADD --chown=ops:9999 app.js .
ADD --chown=ops:9999 pages pages
ADD --chown=ops:9999 routes routes
ADD --chown=ops:9999 plugins plugins

RUN npm install --production

