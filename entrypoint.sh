#!/bin/sh -l

echo "Hello $1, $2, $3"
time=$(date)
echo "::set-output name=time::$time"
