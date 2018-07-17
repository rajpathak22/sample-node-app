FROM node:alpine


WORKDIR /usr/src/app

# Install app dependencies
COPY package.json .
COPY package.json package-lock.json ./

RUN npm install


COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]