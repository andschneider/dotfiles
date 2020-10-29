# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions history-substring-search)

source $ZSH/oh-my-zsh.sh

# User configuration

# set up a nice history
HIST_STAMPS="yyyy-mm-dd"
alias hg="history | grep"
export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTFILE=~/.zsh_history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

