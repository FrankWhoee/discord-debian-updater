#!/bin/bash

user_home=$(eval echo ~$SUDO_USER)
version=$(ls "$user_home/.config/discord" | sed -n "s/^.*\([0-9]\+.[0-9]\+.[0-9]\+\).*$/\1/p")

echo "Current version: $version"
new_version=$(echo $version | awk -F. '{$NF = $NF + 1; print $0}' OFS=.)
echo "Downloading $new_version"
wget https://dl.discordapp.net/apps/linux/$new_version/discord-$new_version.deb
sudo apt-get install ./discord-$new_version.deb
rm discord-$new_version.deb


