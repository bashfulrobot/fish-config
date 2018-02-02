#!/bin/bash

# Config
CONFDIR="$HOME/config"
TRUECONF="$HOME/.config"

# Install needed SW
sudo apt update && sudo apt dist-upgrade -y
sudo apt install fish -y

# Clone repos
cd $CONFDIR
git clone git@github.com:bashfulrobot/fish-config.git

# Sanitize potential previous installs or links
mkdir -p $TRUECONF
cd $TRUECONF
rm -f fish/config.fish
rm -rf fish/functions

# Symlink all the things!
ln -s $CONFDIR/fish-config/fish/config.fish $TRUECONF/fish/config.fish
ln -s $CONFDIR/fish-config/fish/functions $TRUECONF/fish/functions

exit 0
