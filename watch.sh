#!/bin/bash
while true; do
    {
        echo -n $'\033[2J\033[H'
        echo 'ls -x' | bash -i 2>&1
    } > /tmp/o
    sed -e /exit/d /tmp/o
    sleep 0.5
done
