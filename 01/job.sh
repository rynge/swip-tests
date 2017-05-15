#!/bin/bash

echo "Hello!"

chmod 755 keg

for FILE in "$@"; do
    echo "Generating file $FILE"
    ./keg -T 10 -o $FILE=1M
done

ls -lh

