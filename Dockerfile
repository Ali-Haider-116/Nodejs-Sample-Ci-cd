FROM node

WORKDIR /myapp

COPY . .

EXPOSE  5000

CMD ["node","index.js"]