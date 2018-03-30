export ZSH="$HOME/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"

ZSH_THEME="spaceship"
plugins=(git zsh-256color zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source $ZSH/custom/themes/spaceship.zsh-theme

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Some aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias cp='cp -rv'
alias rm='rm -rv'
alias mv='mv -v'
alias la='ls -a'

alias empty-trash='rm -rf ~/.local/share/Trash/files/*'

alias g='git'
alias cl='clear'
alias h='history'
alias q='exit'

alias apti='sudo apt-get install'
alias aptr='sudo apt-get remove'
alias aptu='sudo apt-get update && sudo apt-get upgrade'

alias lip="ifconfig \
    | grep 'inet addr' \
    | grep -v '127.0.0.1' \
    | cut -d: -f2 \
    | cut -d' ' -f1"

alias n='node'
alias ni='npm install'
alias nid='npm install --save-dev'
alias nig='npm install --global'
alias nf='npm cache clean && rm -rf node_modules && npm install'
alias nlg='npm list --global --depth=0'