#!/bin/sh

echo "PROXY_URL=${PROXY_URL}"
echo "HTTP_URL=${HTTP_URL}"
echo "HTTPS_URL=${HTTPS_URL}"

while true
do
	curl -s -x $PROXY_URL $HTTP_URL
	sleep 60
	curl -k -s -x $PROXY_URL $HTTPS_URL
	sleep 60
done

