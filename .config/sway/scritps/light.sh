#!/bin/sh
CONTENT=$(curl -s https://api.ipbase.com/v1/json/)
longitude=$(echo $CONTENT | jq .longitude)
latitude=$(echo $CONTENT | jq .latitude)
wlsunset -l $latitude -L $longitude
