#!/bin/sh

ssh -i ~/.ssh/appuser yc-user@51.250.75.181 <<EOF
sudo apt update
sudo apt install -y ruby-full ruby-bundler build-essential
EOF
