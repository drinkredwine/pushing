#!/usr/bin/env bash

API_KEY="868573DF7BF88"
API_SECRET="5176E439D4E13"
USER="jozo.kovac3@gmail.com"
HOST="http://mastermind.exponea.com:8000"

BODY="The coolest ever company in the world has a news for you."
TITLE="Visit Exponea"
IMAGE="https://pbs.twimg.com/profile_images/701788744198836225/NvvIsOPr.jpg"
TAG="Notification"
LINK="https://www.exponea.com"
TIMEOUT=4

URL="$HOST/api/1.0.0/$API_KEY/users/$USER/"
echo $URL
curl  -X POST -H "Content-Type: application/json" -H "X-Thunder-Secret-Key: $API_SECRET" $URL \
      -d "{\"title\": \"$TITLE\", \"tag\": \"$TAG\",  \"image\": \"$IMAGE\", \"body\": \"$BODY\", \"link\": \"$LINK\", \"timeout\": $TIMEOUT}"
