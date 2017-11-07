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
sudo add-apt-repository -y ppa:numix/ppa

sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"

sudo sh -c 'echo "deb http://repo.vivaldi.com/stable/deb/ stable main" >> /etc/apt/sources.list'
http -d http://repo.vivaldi.com/stable/linux_signing_key.pub | sudo apt-key add -

sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
http --follow https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -

# update apt
sudo apt-get update
sudo apt-get upgrade

# libraries and codecs
sudo apt-get install -y ubuntu-restricted-extras libavcodec-extra rar unrar synaptic

# programming languages
http -d https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash
nvm install --lts

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
http --follow https://get.rvm.io | sudo bash -s stable --ruby

# shell
sudo apt-get install -y git tmux neofetch heroku
sh -c "$(http --follow https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

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

# themes
sudo apt-get install -y --allow-unauthenticated arc-theme numix-icon-theme-square

# settings
gsettings set org.gnome.desktop.privacy remember-recent-files false
gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-minimize-window true
gsettings set org.gnome.desktop.interface gtk-theme 'Arc-Dark'
gsettings set org.gnome.desktop.interface icon-theme 'Numix-Square'
dconf write /org/compiz/profiles/unity/plugins/unityshell/launcher-hide-mode 1 # auto-hide launcher

# uninstall some stuff
sudo apt-get purge -y transmission-common transmission-gtk deja-dup thunderbird simple-scan \
  aisleriot gnome-sudoku gnome-mines gnome-mahjongg \
  libreoffice-draw libreoffice-calc libreoffice-impress libreoffice-math \
  gnome-orca onboard* vino remmina xterm xserver-xorg-input-all-hwe-16.04 \
  unity-webapps-common webbrowser-app unity-lens-files unity-lens-music unity-lens-photos unity-lens-video \
  unity-scope-chromiumbookmarks unity-scope-colourlovers unity-scope-devhelp unity-scope-firefoxbookmarks \
  unity-scope-gdrive unity-scope-manpages unity-scope-openclipart unity-scope-texdoc \
  unity-scope-tomboy unity-scope-video-remote unity-scope-virtualbox unity-scope-yelp unity-scope-zotero
