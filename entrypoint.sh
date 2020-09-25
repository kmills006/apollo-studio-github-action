#!/bin/sh -l

ACTION=$1
APOLLO_KEY=$2
SCHEMA_VARIANT=$3

echo "Beginning $ACTION with Apollo Studio... 🚀 "

echo "$ACTION, $APOLLO_KEY, $SCHEMA_VARIANT"

if which npm > /dev/null
then
    echo "npm is installed, skipping..."
fi

if ! command -v apollo &> /dev/null
then
    echo "apollo-tooling not installed"
    exit
fi

time=$(date)
echo "::set-output name=time::$time"
