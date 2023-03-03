#!/bin/bash

sudo cp a /usr/bin
sudo chmod g+x /usr/bin/a

sudo cp b.lib /usr/lib

sudo mkdir /share/smekhnev
sudo cp c.res /share/smekhnev
sudo tee -a /share/smekhnev/c.res <<< "/usr/bin/a"
sudo tee -a /share/smekhnev/c.res <<< "/usr/lib/b.lib"

exit 0
