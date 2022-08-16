#!/bin/bash

# Running additional tasks if needed by the project 
if [ -e "/init/init.sh" ]; then
  /init/init.sh
fi

if [ -z "$1" ]; then
  sleep infinity
elif [ "$1" == "labelstudio" ]; then
  export LABEL_STUDIO_DISABLE_SIGNUP_WITHOUT_LINK=true
  label-studio start --username default@default.pl --password default@default.pl
else
  exec $1
fi