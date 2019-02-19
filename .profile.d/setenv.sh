#!/bin/sh
echo ".profile.d/setenv.sh"
echo "Turn VCAP_SERVICES into flat env vars"
./vcap-squash-linux-amd64
eval $(./vcap-squash-linux-amd64)
echo "Verify:"
export TEST=WORKING
echo $TEST
echo $NEOS_FLOW_DEMO_DB_HOST