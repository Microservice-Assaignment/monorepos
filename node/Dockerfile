FROM node:18-alpine
ENV NODE_ENV=production

WORKDIR /app

# COPY ["package.json", "package-lock.json*", "./"]

COPY . .

RUN npm install --production


CMD [ "node", "server.js" ]