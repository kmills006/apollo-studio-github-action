#!/bin/sh -l

ARG APOLLO_KEY=$APOLLO_KEY
ENV APOLLO_KEY=$APOLLO_KEY

ACTION=$1
APOLLO_KEY_INPUT=$2
SCHEMA_VARIANT=$3

echo "Beginning $ACTION with Apollo Studio... 🚀 "

echo "APOLLO_KEY: $APOLLO_KEY"
echo "APOLLO_KEY_INPUT: $APOLLO_KEY_INPUT"

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
  # npm install -g apollo
  # apollo -v
fi

time=$(date)
echo "::set-output name=time::$time"
