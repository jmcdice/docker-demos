
MAINTAINER jmcdice

FROM cloudfoundry/cflinuxfs2

RUN apt-get update
RUN apt-get -y install \
    python-pip \
    python3-dev \
    python-dev


COPY ascii-telnet-server.py /ascii-telnet-server.py
RUN echo "#!/bin/sh" >> /root/runme.sh
RUN echo "python /ascii-telnet-server.py -p 8080 -f /scitas-telnet.txt" >> /root/runme.sh
RUN echo "sleep 10000" >> /root/runme.sh
CMD "sh" "/root/runme.sh"

# cf deploy
# cf push cf-startwars --docker-image jmcdice/cf-starwars -d tcp.pcfbeta.io --random-route 
