#!/bin/sh
ssh -i ~/.ssh/appuser yc-user@51.250.75.181 <<EOF
cd ~
sudo apt-get install git -y
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
EOF
