#!/bin/sh -l

ACTION=$1
APOLLO_KEY=$2
SCHEMA_VARIANT=$3

echo "\033[1;32mBeginning $ACTION with Apollo Studio... 🚀 \033[0m"

echo "$ACTION, $APOLLO_KEY, $SCHEMA_VARIANT"

if ! command -v npm &> /dev/null
then
    echo "NPM not installed"
    exit
fi

if ! command -v apollo &> /dev/null
then
    echo "apollo-tooling not installed"
    exit
fi

time=$(date)
echo "::set-output name=time::$time"
