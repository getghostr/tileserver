FROM node:10-buster

EXPOSE 8080

WORKDIR /data

USER root:root

RUN npm i -g --unsafe-perm tileserver-gl-light@3.1.1

RUN mkdir fonts mbtiles sprites styles

COPY . .

ENTRYPOINT ["tileserver-gl-light", "-c", "/data/config.json"]
