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
sh -c "$(http --follow https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install npm global packages
npm install -g browser-sync fuck-you surge vtop wifi-password-cli

# text editors
sudo apt-get install -y atom code
apm install atom-beautify editorconfig emmet highlight-selected minimap pigments \
  seti-icons dracula-syntax duotone-dark-sea-syntax duotone-dark-space-syntax \
  duotone-dark-forest-syntax duotone-dark-earth-syntax duotone-dark-sky-syntax
code --install-extension dracula-theme.theme-dracula
code --install-extension vector-of-bool.gitflow
code --install-extension christian-kohler.path-intellisense
code --install-extension joshpeng.theme-charcoal-oceanicnext
code --install-extension waderyan.gitblame

# browsers
sudo apt-get install -y chromium-browser vivaldi-stable

# other apps
sudo apt-get install -y syspeek bleachbit simplescreenrecorder
