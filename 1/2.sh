#!/bin/bash

sudo mv 2 /usr/bin
chmod +x /usr/bin/2

sudo mv 2.lib /usr/lib

sudo mv 2.res /share/smekhnev
echo "/usr/bin/2" >> /share/smekhnev/2.res
echo "/usr/lib/2.lib" >> /share/smekhnev/2.res

exit 0
