#!/bin/sh

wd=`dirname $0`

. ${wd}/lib.sh

version=`getVersionString`

if [ ! -z "$DEPLOY_TRIGGER_URL" ]; then
  curl -g -X POST -F ref=master -F token=$DEPLOY_TRIGGER_TOKEN -F variables[CORE_IMAGE]=$IMAGE:$version ${DEPLOY_TRIGGER_URL}
fi
