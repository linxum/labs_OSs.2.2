#!/bin/bash
if [ $1 ]; then
        dir=$1
else
        read -p "Введите директорию: " dir 
fi

find $dir/ -name *.run -exec sudo chmod +x '{}' \;
sudo echo "chmod +x '{}' \;" > /var/log/smekhnev.log

exit 0
