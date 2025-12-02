FROM node
WORKDIR /app
COPY package.json .
RUN npm config set strict-ssl false
RUN npm install

COPY . .
ENV HTTP_PROXY="http://ting.int.rsk.kg:3128"
ENV HTTPS_PROXY="http://ting.int.rsk.kg:3128"
CMD ["node", "app.js"]
