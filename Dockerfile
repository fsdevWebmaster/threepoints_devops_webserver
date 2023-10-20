FROM node:4.2.1-slim

WORKDIR /usr/src/app

COPY src/package*.json ./
RUN npm install

COPY src/index.js .

EXPOSE 8090

CMD [ "node", "index.js" ]
