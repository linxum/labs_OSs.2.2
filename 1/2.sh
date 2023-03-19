#!/bin/bash

cp a /usr/bin
chmod g+x /usr/bin/a

cp b.lib /usr/lib

mkdir /share/smekhnev
cp c.res /share/smekhnev
echo "/usr/bin/a" > /share/smekhnev/c.res
echo "/usr/lib/b.lib" >> /share/smekhnev/c.res
exit 0
