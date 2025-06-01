# ZSH Setup
ZSH_DIR=$HOME/.zsh
HISTFILE=$ZSH_DIR/.zshistory
HISTSIZE=1000
SAVEHIST=1000

PLUGIN_DIR=/usr/share/zsh/plugins
source $PLUGIN_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"

# Aliases
alias ls="ls --color=auto"
