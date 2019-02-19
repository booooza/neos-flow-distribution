#!/bin/sh
echo "Turn VCAP_SERVICES into flat env vars"
eval $(./vcap-squash-linux-amd64)