eval "$(/opt/homebrew/bin/starship init zsh)"

autoload -Uz compinit
compinit

export EDITOR=/opt/homebrew/bin/nvim

export PATH=/opt/homebrew/bin:$PATH
export PATH="$HOME/.rd/bin:$PATH"

export XDG_CONFIG_HOME="$HOME/.config"


# kubectl

alias k='kubectl'

source <(kubectl completion zsh)
