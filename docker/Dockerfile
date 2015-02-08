FROM debian:wheezy
COPY backports.list /etc/apt/sources.list.d/backports.list
RUN apt-get update
RUN apt-get install -y postgresql-9.1 postgresql-9.1-postgis
RUN apt-get install -y nodejs-legacy curl
RUN curl -L --insecure https://www.npmjs.org/install.sh | bash
RUN apt-get install -y git
RUN adduser youzat
RUN apt-get install -y sudo
RUN npm install -g grunt-cli
RUN npm install -g bower
