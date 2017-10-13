#!/bin/sh

# add repositories

sudo add-apt-repository -y ppa:dawidd0811/neofetch
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo add-apt-repository -y ppa:webupd8team/atom
sudo add-apt-repository -y ppa:saiarcot895/chromium-beta
sudo add-apt-repository -y ppa:nilarimogard/webupd8
sudo add-apt-repository -y ppa:maarten-baert/simplescreenrecorder


# update apt

sudo apt-get update
sudo apt-get upgrade


# libraries and codecs

sudo apt-get install -y ubuntu-restricted-extras libavcodec-extra rar unrar synaptic


# shell

sudo apt-get install -y git tmux httpie neofetch


# programming languages

http --download https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash
nvm install --lts


# text editors

sudo apt-get install -y atom


# browsers

sudo apt-get install -y chromium-browser


# other apps

sudo apt-get install -y syspeek bleachbit simplescreenrecorder
