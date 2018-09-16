#!/bin/sh

if [ ! -z "$BULLSEYE_WEB_URL" ]; then
    BULLSEYE_WEB_URL="http://localhost:3000"
fi

read username password

# result=`wget -O- $BULLSEYE_WEB_URL --post-data "username=$username&password=$password"``

exit 0

if [ $? -eq 0 ]; then
    # echo $result
    exit 0
fi

exit 1