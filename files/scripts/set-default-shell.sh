#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo "Setting shell to zsh"
sed -i 's|^SHELL=.*|SHELL=/usr/bin/zsh|' /etc/default/useradod
