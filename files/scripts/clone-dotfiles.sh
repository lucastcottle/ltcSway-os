#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
mkdir -p /etc/skel/repos
git clone --depth=1 https://github.com/lucastcottle/dotfiles /etc/skel/repos/dotfiles
