#!/bin/sh

read username password

result=`wget -O- $BULLSEYE_WEB_URL/internal_api/v1/login.json --header "Authorization: Bearer $BULLSEYE_API_AUTH_TOKEN" --post-data "name=$username&password=$password"`

if [ $result = '{"result":"success"}' ]; then
    exit 0
fi

exit 1
