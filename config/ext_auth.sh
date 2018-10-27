#!/bin/sh

if [ ! -z "$BULLSEYE_WEB_URL" ]; then
    BULLSEYE_WEB_URL="http://localhost:3000"
fi

read username password

# TODO: RCE may occur!!!!!!
result=`curl "$BULLSEYE_WEB_URL/internal_api/v1/login.json" -X POST -H "Content-Type: application/json" -H "Authorization: Bearer $BULLSEYE_API_AUTH_TOKEN" --data "{\"name\":\"$username\",\"password\":\"$password\"}"`

if [ $result = '{"result":"success"}' ]; then
    exit 0
fi

exit 1
