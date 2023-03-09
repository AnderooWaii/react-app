#Builder
FROM node AS prod

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# RUN npm test - if you want to test before to build
RUN npm run build

CMD [ "npm", "start" ]