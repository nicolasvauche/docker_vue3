FROM node:latest

ENV PORT 8080

WORKDIR /usr/src/app
COPY ./app /usr/src

RUN npm install

ENTRYPOINT ["npm", "run", "serve"]