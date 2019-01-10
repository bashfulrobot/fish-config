#!/bin/bash

# Config
CONFDIR="$HOME/fish-config"
TRUECONF="$HOME/.config"

# Check if fish-config is where it belongs
if [ ! -d "$CONFDIR" ]; then
  echo "$CONFDIR does not exist. Please move the cloned repo to your home folder."
  echo "Then please run the script again."
  exit 1
fi

# Install needed SW
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update && sudo apt dist-upgrade -y
sudo apt install fish -y

# Sanitize potential previous installs or links
mkdir -p $TRUECONF/fish/functions
cd $TRUECONF
rm -f fish/config.fish
rm -rf fish/functions

# Symlink all the things!
ln -s $CONFDIR/fish/config.fish $TRUECONF/fish/config.fish
ln -s $CONFDIR/fish/functions $TRUECONF/fish/functions

# Install OMF
echo "install OMF with something like: curl -L https://get.oh-my.fish | fish"
echo "But piping is naughty - so manual is better."
echo "Please run under fish: omf install z; and omf install 
budspencer"

exit 0
