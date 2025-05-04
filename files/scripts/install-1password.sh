#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo "Adding 1Password Flatpak remote..."
flatpak remote-add --if-not-exists 1password https://downloads.1password.com/linux/flatpak/1Password.flatpakrepo
echo "Installing 1Password..."
flatpak install -y --noninteractive --from https://downloads.1password.com/linux/flatpak/1Password.flatpakref
