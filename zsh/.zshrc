eval "$(starship init zsh)"

autoload -Uz compinit
compinit

export EDITOR=nvim

export PATH=/opt/homebrew/bin:$PATH
export PATH="$HOME/.rd/bin:$PATH"

export XDG_CONFIG_HOME="$HOME/.config"

#dotfiles

alias dotfiles="cd ~/Repos/codeberg.org/kltrst/dotfiles/"

# fzf
source <(fzf --zsh)

# Zettelkasten

alias cdzk="cd ~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/Zettlekasten"
alias nvzk="cd ~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/Zettlekasten && nvim"

# task

alias t=task

# kubectl

# alias k='kubectl'
#
# source <(kubectl completion zsh)
# compdef __start_kubectl k
