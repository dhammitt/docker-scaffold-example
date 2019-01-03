FROM node:10.13-alpine as deps
ENV NODE_ENV production
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
COPY . .
RUN npm run build

FROM node:10.13-alpine
EXPOSE 8080
CMD ["node", "./src/srv/index.js"]