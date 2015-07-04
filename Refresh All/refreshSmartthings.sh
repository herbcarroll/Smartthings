#!/bin/sh

POLL_INTERVAL_SEC=360

APPID="00000000-0000-0000-0000-000000000000"
ACCESSTOKEN="00000000-0000-0000-0000-000000000000"
REFRESHURL="https://graph.api.smartthings.com/api/smartapps/installations/${APPID}/refresh?access_token=${ACCESSTOKEN}"


while sleep $POLL_INTERVAL_SEC
do
	curl "${REFRESHURL}" -k	
done