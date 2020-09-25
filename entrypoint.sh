#!/bin/sh -l

COMMAND=$1
SCHEMA_VARIANT=$3

if ! [ $APOLLO_KEY ]
then
  echo "APOLLO_KEY must be supplied as an environment variable."
  exit
fi

echo "Beginning $COMMAND with Apollo Studio... 🚀 "

echo "$COMMAND, $APOLLO_KEY, $SCHEMA_VARIANT"

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
  # npm install -g apollo
  # apollo -v
fi

time=$(date)
echo "::set-output name=time::$time"
