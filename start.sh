#!/bin/bash

# Add admin user
sudo pufferpanel user add \
  --username Toyaha \
  --email heroalfi@gmail.com \
  --password Error-0.1 \
  --admin

# Enable and start PufferPanel
sudo systemctl enable --now pufferpanel

# Set up Ngrok tunnel
ngrok config add-authtoken 2zcqmgBBXh8owXVChvcDHGTpSY9_5yNoSpoAXrtugEZJSziPU
ngrok http http://localhost:8080
