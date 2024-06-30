FROM node:20
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 80
ENV NAME jenkins-app1   
CMD ["npm","start"]
