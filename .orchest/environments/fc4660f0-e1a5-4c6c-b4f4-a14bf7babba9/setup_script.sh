#!/bin/bash

# Install any dependencies you have in this shell script,
# see https://docs.orchest.io/en/latest/fundamentals/environments.html#install-packages

# E.g. mamba install -y tensorflow
sudo apt-get update && sudo apt-get install git curl build-essential -y
git clone https://github.com/haad/proxychains /tmp/proxychains
cd /tmp/proxychains
./configure
make
sudo make install

cd -
mkdir -p ~/.proxychains
cp proxychains.conf ~/.proxychains/proxychains.conf

# Usage: e.g. proxychains4 curl -L http://ipecho.net/plain
pip install -r requirements.txt
