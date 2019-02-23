FROM circleci/node:10.13.0-browsers
RUN echo "deb http://http.debian.net/debian jessie-backports main" | sudo tee --append /etc/apt/sources.list
RUN sudo apt-get update
RUN sudo apt-get install -t jessie-backports openjdk-8-jdk
RUN wget https://github.com/jwilder/dockerize/releases/download/v0.6.1/dockerize-linux-amd64-v0.6.1.tar.gz && sudo tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v0.6.1.tar.gz && rm dockerize-linux-amd64-v0.6.1.tar.gz
