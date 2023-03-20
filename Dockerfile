FROM ubuntu:latest
WORKDIR /app
RUN apt-get update -y && apt-get install -y software-properties-common build-essential libffi-dev libssl-dev python3-pip
RUN add-apt-repository ppa:rmescandon/yq
RUN apt-get update -y && apt-get install -y git jq yq docker docker-compose npm gettext-base
RUN npm i -g http-server n yarn yq envsubst
RUN git clone https://github.com/baronrustamov/noosphere .
RUN bash ./scripts/app install os
RUN bash ./scripts/app start os
EXPOSE 80
