#!/bin/bash
find $1/ -name *.run -exec sudo chattr +x '{}' \;
sudo echo "find $1/ -name *.run -exec sudo chattr +x '{}' \;" >> /var/log/smekhnev.log
exit 0
