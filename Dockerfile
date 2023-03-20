FROM ubuntu:latest
RUN apt-get update -y && apt-get install -y software-properties-common build-essential libffi-dev libssl-dev python3-pip
RUN add-apt-repository ppa:rmescandon/yq
RUN apt-get update -y && apt-get install -y git jq yq docker docker-compose npm
RUN npm i -g http-server n yarn yq
RUN git clone https://github.com/baronrustamov/noosphere
RUN bash ./noosphere/scripts/app configure
RUN bash ./noosphere/scripts/app install
RUN bash ./noosphere/scripts/app start
EXPOSE 80
