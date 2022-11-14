FROM node:16 as build

WORKDIR /places-app

COPY package*.json ./

RUN npm install

COPY . ./

RUN npm run build

FROM nginx:1.19

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

COPY --from=build /places-app/build /usr/share/nginx/html
