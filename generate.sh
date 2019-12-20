#!/bin/bash

trap "keep_running=false" SIGINT SIGTERM

keep_running=true
while $keep_running; do
    NOW=$(date +'%Y-%m-%d %H:%M:%S')
    let num_chars=$RANDOM/80
    msg=$(head /dev/urandom | tr -dc A-Za-z0-9\  | head -c$num_chars)
    echo $NOW $msg $RANDOM

    let nap_time=$RANDOM%10
    sleep 0.$nap_time
done
