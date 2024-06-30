FROM node:20.11
WORKDIR /app
COPY package*.json ./
RUN curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list
RUN apt-get update
RUN apt-get install -y google-chrome-stable xvfb
RUN npm install
COPY . .
EXPOSE 80
ENV NAME jenkins-app1   
CMD ["npm","start"]
