FROM node:alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm i --only=production

COPY . ./

CMD ["npm", "start"]
