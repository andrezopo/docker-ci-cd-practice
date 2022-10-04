FROM node

WORKDIR /usr/src

COPY . .

EXPOSE 5009

RUN npm i

RUN npm run build

CMD [ "npm", "start" ]