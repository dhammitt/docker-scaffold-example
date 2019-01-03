FROM node:10.13-alpine as build
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm install --only-production && npm run build
# RUN npm run build
EXPOSE 8080
CMD ["node", "./src/srv/index.js"]