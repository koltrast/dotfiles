eval "$(/opt/homebrew/bin/starship init zsh)"

autoload -Uz compinit
compinit

export EDITOR=/opt/homebrew/bin/nvim

export PATH=/opt/homebrew/bin:$PATH
export PATH="$HOME/.rd/bin:$PATH"

export XDG_CONFIG_HOME="$HOME/.config"


# Zettelkasten

alias cdzk="cd ~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/Zettlekasten"
alias nvzk="cd ~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/Zettlekasten && nvim"

# kubectl

# alias k='kubectl'
#
# source <(kubectl completion zsh)
# compdef __start_kubectl k
