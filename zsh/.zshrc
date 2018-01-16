export ZSH="$HOME/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"

ZSH_THEME="spaceship"
plugins=(git zsh-256color zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source $ZSH/custom/themes/spaceship.zsh-theme

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
