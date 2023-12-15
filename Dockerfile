FROM node:alpine

WORKDIR /app

COPY ./package.json .

RUN npm install

COPY .  .

RUN npm install

ENV PATH=$PATH:/app/node_modules/.bin

CMD [ "nodemon",  "src/app.js" ]