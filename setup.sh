#!/bin/sh

# Enable http command
sudo apt-get install -y httpie

# add repositories
sudo add-apt-repository -y ppa:dawidd0811/neofetch
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo add-apt-repository -y ppa:webupd8team/atom
sudo add-apt-repository -y ppa:saiarcot895/chromium-beta
sudo add-apt-repository -y ppa:nilarimogard/webupd8 # syspeek
sudo add-apt-repository -y ppa:maarten-baert/simplescreenrecorder

sudo sh -c 'echo "deb http://repo.vivaldi.com/stable/deb/ stable main" >> /etc/apt/sources.list'
http -d http://repo.vivaldi.com/stable/linux_signing_key.pub | sudo apt-key add -

# update apt
sudo apt-get update
sudo apt-get upgrade

# libraries and codecs
sudo apt-get install -y ubuntu-restricted-extras libavcodec-extra rar unrar synaptic

# shell
sudo apt-get install -y git tmux neofetch

# programming languages
http -d https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash
nvm install --lts

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
http --follow https://get.rvm.io | sudo bash -s stable --ruby

# install npm global packages
npm install -g browser-sync fuck-you surge vtop wifi-password-cli

# text editors
sudo apt-get install -y atom
apm install atom-beautify editorconfig emmet highlight-selected minimap pigments \
  seti-icons dracula-syntax duotone-dark-sea-syntax duotone-dark-space-syntax \
  duotone-dark-forest-syntax duotone-dark-earth-syntax duotone-dark-sky-syntax

# browsers
sudo apt-get install -y chromium-browser vivaldi-stable

# other apps
sudo apt-get install -y syspeek bleachbit simplescreenrecorder
