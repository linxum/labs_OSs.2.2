#!/bin/bash
if [ -n "$1" ];
then
    find $1/ -name *.run -exec sudo chmod +x '{}' \;
else
    echo "Usage: ./1.sh [directory]"
fi
exit 0
