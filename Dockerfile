FROM ubuntu:latest
RUN apt-get update -y && apt-get install -y git build-essential libffi-dev libssl-dev python3 docker docker-compose npm
RUN npm i -g pm2 http-server n yarn
RUN git clone https://github.com/baronrustamov/noosphere
RUN bash ./noosphere/scripts app configure
RUN bash ./noosphere/scripts app install
RUN bash ./noosphere/scripts app start
EXPOSE 80
