# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Add Go and `go install` directory to path
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin

ZSH_THEME="powerlevel10k/powerlevel10k"

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
