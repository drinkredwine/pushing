#!/usr/bin/env bash

CHANNEL="channel"
SECRET="5176E439D4E13"
KEY="868573DF7BF88"
HOST="http://mastermind.exponea.com:8000"

BODY="The coolest ever company in the world has a news for you."
TITLE="Visit Exponea"
IMAGE="https://pbs.twimg.com/profile_images/701788744198836225/NvvIsOPr.jpg"
TAG="Notification"
LINK="https://www.exponea.com"
TIMEOUT=4

URL="$HOST/api/1.0.0/$KEY/channels/$CHANNEL/"

curl  -X POST -H "Content-Type: application/json" -H "X-Thunder-Secret-Key: $SECRET" "$URL" \
    -d "{\"title\": \"$TITLE\", \"tag\": \"$TAG\",  \"image\": \"$IMAGE\", \"body\": \"$BODY\", \"link\": \"$LINK\", \"timeout\": $TIMEOUT}"
