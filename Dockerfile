FROM ubuntu

RUN apt-get update
RUN apt-get install nodejs npm -y

WORKDIR /opt

COPY package.json .

RUN npm install

COPY . . 

EXPOSE 3000

CMD ["npm","start"]