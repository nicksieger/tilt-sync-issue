# nginx #######################################################################
FROM debian:bullseye-20220316 as spryker

RUN mkdir -p /data
WORKDIR /data

COPY . .


# spryker-depts ###############################################################
FROM nginx:1.21.6-alpine as nginx-application

COPY public/ /data/public/
