#!/bin/bash
while true; do
    {
        echo -n $'\033[?25l\033[2J\033[H'
        echo 'ls -ax' | bash -i 2>&1
        echo -n $'\033[?25h' # Should 'trap' that to always
                             # restore cursor on exit
    } | sed -e /exit/d
    sleep 0.5
done
