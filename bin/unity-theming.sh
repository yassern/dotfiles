#!/bin/sh

sudo add-apt-repository -y ppa:numix/ppa
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"

# update apt
sudo apt-get update
sudo apt-get upgrade

# themes
sudo apt-get install -y --allow-unauthenticated arc-theme numix-icon-theme-square

gsettings set org.gnome.desktop.privacy remember-recent-files false
gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-minimize-window true
gsettings set org.gnome.desktop.interface gtk-theme 'Arc-Dark'
gsettings set org.gnome.desktop.interface icon-theme 'Numix-Square'
dconf write /org/compiz/profiles/unity/plugins/unityshell/launcher-hide-mode 1 # auto-hide launcher
