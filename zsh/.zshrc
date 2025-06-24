# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export LC_ALL=en_IN.UTF-8
export LANG=en_IN.UTF-8
export EDITOR=nvim
export VISUAL=nvim
export TERM="xterm-256color"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="catppuccin"
CATPPUCCIN_FLAVOR="mocha" # Required! Options: mocha, flappe, macchiato, latte
CATPPUCCIN_SHOW_TIME=true  # Optional! If set to true, this will add the current time to the prompt.

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source $HOME/repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh

source ~/repos/zsh-z/zsh-z.plugin.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
# export PATH=$PATH:/usr/local/go/bin
export PATH="$HOME/go/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin

alias xc='xclip -selection clipboard'
alias nv='nvim'
alias nvi='nvim ~/.config/nvim'
alias kit='nvim ~/.config/kitty'
alias pb='nvim ~/.config/polybar'
alias i3wm='nvim ~/.config/i3'
alias repos='cd ~/repos'
alias x='exit'
alias lg='lazygit'
alias ra='ranger'
alias pc='nv ~/.config/picom.conf'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

#miktex
export PATH="/home/prozod/bin:$PATH"

#rofi wifi module
export PATH="$HOME/.config/rofi/rofi_wifi_menu.sh:$PATH"

# java swing antialiased text
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true'

# zsh prompt 
PROMPT='%F{blue}%~%f $(git_prompt_info) %F{green}%#%f '

export XDG_DATA_DIRS="$XDG_DATA_DIRS:/var/lib/flatpak/exports/share:/home/$USER/.local/share/flatpak/exports/share"

# display message on load/reload
echo ">>> .zshrc loaded <<<"

export PATH=$PATH:/home/prozod/.spicetify
export PATH="$HOME/.local/share/nvim/mason/packages/codelldb/extension/adapter:$PATH"
