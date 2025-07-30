FROM node:24-alpine3.20

WORKDIR /spp

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "run", "start" ]