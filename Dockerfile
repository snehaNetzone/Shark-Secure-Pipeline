FROM node:10-alpine

RUN mkdir -p /home/ubuntu/jenkins/workspace/Final/Shark-Secure-Pipeline/app/node_modules && chown -R node:node /home/ubuntu/jenkins/workspace/Final/Shark-Secure-Pipeline/app

WORKDIR /home/ubuntu/jenkins/workspace/Final/Shark-Secure-Pipeline/app

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "node", "app.js" ]

