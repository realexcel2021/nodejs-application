FROM node:slim

WORKDIR /app

COPY *.json .

RUN npm install

COPY . /app/

EXPOSE 3000

ENV PORT=3000

ENTRYPOINT [ "npm", "start" ]