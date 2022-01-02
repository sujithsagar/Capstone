FROM node:16
#creating work directory
WORKDIR /usr/src/app
#Copying the node app files
COPY package*.json ./
#downloading dependencies using npm
RUN npm install
COPY . .
#Exposing container port
EXPOSE 8081
#Command for starting node app
CMD [ "node", "server.js" ]
