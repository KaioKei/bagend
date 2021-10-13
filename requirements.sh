#!/bin/bash

# update libs
sudo apt-get update

# apt requirements
sudo apt-get install software-properties-common curl python3 python3-pip build-essential make libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# python
sudo ln -s /usr/bin/python3 /usr/bin/python
pip install --upgrade pip