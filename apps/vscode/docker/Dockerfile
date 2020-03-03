FROM ubuntu:latest
MAINTAINER  Joey <jmcdonald@pivotal.io>

# Setup VSCode Server
# https://github.com/cdr/code-server 
RUN apt-get update && apt-get -y dist-upgrade
RUN apt-get install -y wget git htop
RUN wget https://github.com/cdr/code-server/releases/download/1.1156-vsc1.33.1/code-server1.1156-vsc1.33.1-linux-x64.tar.gz
RUN tar -zxvf code-server1.1156-vsc1.33.1-linux-x64.tar.gz
RUN cp code-server1.1156-vsc1.33.1-linux-x64/code-server /usr/local/bin/

ADD start.sh /
CMD bash /start.sh

# Docker Build/Push
#  docker build --rm -t jmcdice/vscode-server:latest .
#  docker push jmcdice/vscode-server:latest

