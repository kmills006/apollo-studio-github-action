#!/bin/sh -l

ACTION=$1
APOLLO_KEY=$2
SCHEMA_VARIANT=$3

echo "Beginning $ACTION with Apollo Studio... 🚀 "

echo "$ACTION, $APOLLO_KEY, $SCHEMA_VARIANT"

if which npm > /dev/null
then
  echo "npm is installed, skipping..."
else
  echo "this action needs npm, check the image."
  exit
fi

if ! command -v apollo &> /dev/null
then
  echo "installing apollo-tooling"
  npm install -g apollo
  apollo -v
fi

if [ $ACTION = "validate" ]
then
  $COMMAND_PREFIX=apollo service:check
elif [ $ACTION = "publish" ]
then
  $COMMAND_PREFIX=apollo service:publish
else
  echo "action not supported.. exiting."
  exit
fi

echo "COMMAND_PREFIX $COMMAND_PREFIX"

time=$(date)
echo "::set-output name=time::$time"
