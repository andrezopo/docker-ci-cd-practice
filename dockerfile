FROM node

WORKDIR /usr/src

COPY . .

EXPOSE 5009

RUN npm i

RUN npm run build

RUN npx prisma generate

CMD [ "npm", "start" ]