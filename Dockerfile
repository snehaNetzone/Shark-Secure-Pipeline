FROM node:10-alpine

RUN mkdir -p /home/ubuntu/jenkins/workspace/Final/Shark-Secure-Pipeline/node_modules && chown -R ubuntu:ubuntu /home/ubuntu/jenkins/workspace/Final/Shark-Secure-Pipeline/

WORKDIR /home/ubuntu/jenkins/workspace/Final/Shark-Secure-Pipeline/app

COPY package*.json ./

RUN npm install

CMD [ "ubuntu", "app.js" ]

