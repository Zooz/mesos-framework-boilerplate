#!/bin/sh

wd=`dirname $0`

. ${wd}/lib.sh

version=`getVersionString`

if [ ! -z "$DEPLOY_TRIGGER_URL" ]; then
  curl $DEPLOY_TRIGGER_URL&variables[CORE_IMAGE]=$IMAGE:$version
fi
