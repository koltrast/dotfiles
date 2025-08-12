eval "$(starship init zsh)"

autoload -Uz compinit
compinit

export EDITOR=nvim

export PATH=/opt/homebrew/bin:$PATH
export PATH="$HOME/.rd/bin:$PATH"

export XDG_CONFIG_HOME="$HOME/.config"

# dotfiles

alias dotfiles="cd ~/Repos/codeberg.org/kltrst/dotfiles/ && nvim"

# fzf
source <(fzf --zsh)

# Taskwarrior & Timewarrior

alias t=task
alias tw=timew

# kubectl

# alias k='kubectl'
#
# source <(kubectl completion zsh)
# compdef __start_kubectl k

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
