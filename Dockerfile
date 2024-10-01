FROM node

WORKDIR /myapp

COPY . .

RUN npm install

RUN npm install jest

EXPOSE  5000

CMD ["node","index.js"]
