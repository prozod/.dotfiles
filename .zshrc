# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="robbyrussell"
# ZSH_THEME="powerlevel10k/powerlevel10k"

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

export PATH=/opt/homebrew/bin:$PATH
export NVM_DIR="$HOME/.nvm"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

eval "$(zoxide init zsh)"

##########################################
### +++++++ ADD COSTUMS BELOW ++++++++ ###
##########################################

# Golang
export GOPATH=$HOME/go
export GOROOT=/usr/local/go

# Python
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/bin/python3
export PATH=$PATH:$HOME/Library/Python/3.8/lib/python/site-packages/
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# TMUXIFIER
export EDITOR="nvim"
export PATH="$HOME/Repos/.tmuxifier/bin:$PATH"
eval "$(tmuxifier init -)"
alias tm="tmuxifier"

#####################################
### ----> DIRECTORY & GIT ALIASES <---- ###
#####################################

alias src="source ~/.zshrc"
alias code="cd ~/Projects"
alias dl="cd ~/Downloads"
alias dot="cd ~/.dotfiles"
alias nv="nvim"
alias she="nvim ~/.dotfiles/.zshrc"
alias kit="nvim ~/.dotfiles/.config/kitty/"
alias nvi="nvim ~/.dotfiles/.config/nvim/"
alias tmu="nvim ~/.dotfiles/.tmux.conf"
alias x="exit"
alias gco="git checkout"
alias gc="git commit"
alias ga="git add"
alias gp="git push"
alias gs="git status"
alias orar="node ~/Projects/orar/src/app.js"

# Add plugins wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-autosuggestions
    zsh-interactive-cd)

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

source ~/powerlevel10k/powerlevel10k.zsh-theme

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#141414,bg=#3DED97,bold,underline"
bindkey "^[[Z" autosuggest-accept

### Check if on my macbook when using autosuggestions (this isnt needed on linux)
if [[ $OSTYPE == 'darwin'* ]]; then
    echo 'macOS detected, using brew for zsh'
    source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    source ~/Repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh
fi

# source powerlevel10k
source ~/powerlevel10k/powerlevel10k.zsh-theme
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

echo "[+] .zshrc configuration loaded [+]"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"


# Load Angular CLI autocompletion.
source <(ng completion script)

# Maven
export M2_HOME="/Users/prozod/apache-maven-3.9.5"
PATH="${M2_HOME}/bin:${PATH}"
export PATH
