# ZSH Setup
ZSH_DIR=$HOME/.zsh
HISTFILE=$ZSH_DIR/.zshistory
HISTSIZE=1000
SAVEHIST=1000

PLUGIN_DIR=/usr/share/zsh/plugins
source $PLUGIN_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"


# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Aliases
alias ls="ls --color=auto"
