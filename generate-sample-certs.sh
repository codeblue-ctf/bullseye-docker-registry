#!/bin/bash

cd `dirname $0`
if [ ! -d config/certs ]; then
  mkdir config/certs
fi
openssl req -nodes -newkey rsa:4096 -keyout config/certs/server.key -out config/certs/server.csr -subj "/CN=dockerauth"
openssl x509 -in config/certs/server.csr -out config/certs/server.crt -req -signkey config/certs/server.key -days 3650
