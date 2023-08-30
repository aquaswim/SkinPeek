FROM node:18-alpine

WORKDIR /usr/app

COPY package.json package-lock.json /usr/app
RUN npm i

COPY config.json.example sharding.js SkinPeek.js /usr/app
COPY assets /usr/app/assets
COPY discord /usr/app/discord
COPY languages /usr/app/languages
COPY misc /usr/app/misc
COPY valorant /usr/app/valorant

CMD ["node", "SkinPeek.js"]
