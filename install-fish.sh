#!/bin/bash

# Config
CONFDIR="$HOME/myconfig"
TRUECONF="$HOME/.config"

# Install needed SW
sudo apt-add-repository ppa:fish-shell/release-2
sudo apt update && sudo apt dist-upgrade -y
sudo apt install fish -y

# Clone repos
cd $CONFDIR
#git clone git@github.com:bashfulrobot/fish-config.git

# Sanitize potential previous installs or links
mkdir -p $TRUECONF/fish/functions
cd $TRUECONF
rm -f fish/config.fish
rm -rf fish/functions

# Symlink all the things!
ln -s $CONFDIR/fish-config/fish/config.fish $TRUECONF/fish/config.fish
ln -s $CONFDIR/fish-config/fish/functions $TRUECONF/fish/functions

# Install OMF
echo "install OMF with something like: curl -L https://get.oh-my.fish | fish"
echo "But piping is naughty - so manual is better."
echo "Please run under fish: omf install z; and omf install 
budspencer"

exit 0
