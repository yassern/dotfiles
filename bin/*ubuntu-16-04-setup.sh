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

sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
http --follow https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -

http https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# update apt
sudo apt-get update
sudo apt-get upgrade

# libraries and codecs
sudo apt-get install -y xubuntu-restricted-extras libavcodec-extra rar unrar synaptic

# programming languages
http -d https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
nvm install --lts

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
http --follow https://get.rvm.io | sudo bash -s stable --ruby

# shell
sudo apt-get install -y git tmux neofetch heroku

#zsh
sh -c "$(http --follow https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
( cd $ZSH_CUSTOM/plugins && git clone https://github.com/chrissicool/zsh-256color )
http -d - https://raw.githubusercontent.com/denysdovhan/spaceship-zsh-theme/master/install.zsh | zsh

# text editors
sudo apt-get install -y atom code

# browsers
sudo apt-get install -y chromium-browser vivaldi-stable

# other apps
sudo apt-get install -y syspeek bleachbit simplescreenrecorder
