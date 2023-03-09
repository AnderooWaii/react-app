#Builder
FROM node AS prod

COPY ~/.ssh/known_host /root/known_host

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# RUN npm test - if you want to test before to build
RUN npm run build

EXPOSE 3000

CMD [ "npm", "start" ]