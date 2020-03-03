#!/bin/bash
#
# Start our server with some good looking options.

mkdir -p /home/workspace/

if [ -z "${PASSWD}" ]; then
  /usr/local/bin/code-server /home/workspace/ --host 0.0.0.0 --port 8080 --allow-http --no-auth
else
  PASSWORD=${PASSWD} /usr/local/bin/code-server /home/workspace/ --host 0.0.0.0 --port 8080 --allow-http
fi

while true; 
  do sleep 10; 
done
