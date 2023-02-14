#!/bin/bash
find $1/ -name *.run -exec sudo chattr +x '{}' \;
exit 0
