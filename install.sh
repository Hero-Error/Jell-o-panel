#!/bin/bash
apt update -y && apt install -y curl
curl -s https://raw.githubusercontent.com/JishnuTheGamer/puffer-panel/main/install.sh | bash
pufferpanel user add --username Toyaha --email heroalfi@gmail.com --password Error-0.1 --admin
pufferpanel run
