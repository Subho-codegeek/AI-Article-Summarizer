FROM node:lts
EXPOSE 5173

WORKDIR /app
COPY package*.json ./

RUN npm install
COPY . .

CMD [ "npm", "run", "dev" ]
