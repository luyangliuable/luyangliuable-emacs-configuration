#!/bin/bash

tempfile=$(mktemp)

echo "Created temporary file $tempfile"

emacsclient -s /var/folders/pp/dv4q4ktx5dd9pdxw4y2thzbm0000gn/T/emacs501/server $tempfile & 

# Infinite while loop in shell
while true
do
    clear
    cat $tempfile | tail
    lastline=$(cat $tempfile | tail -n 1)
    result=$(eval '$lastline')
    echo -n "$result" >> $tempfile
    sleep 1
done
