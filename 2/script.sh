#!/bin/bash

sudo mv a /usr/bin
chmod +x /usr/bin/a

sudo mv b.lib /usr/lib

sudo mv c.res /share/smekhnev
echo "/usr/bin/a" >> /share/smekhnev/c.res
echo "/usr/lib/b" >> /share/smekhnev/c.res

exit 0
