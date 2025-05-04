#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo "Cloning dotfiles..."
git clone --depth=1 https://github.com/lucastcottle/dotfiles /etc/skel
rm -rf /etc/skel/.git
