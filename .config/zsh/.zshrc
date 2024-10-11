# Define Zsh home directory
export ZSH="$HOME/.config/zsh"

# Load Starship prompt (you could leave this out if not needed in every session)
eval "$(starship init zsh)"

# Aliases
alias update="brew update && brew upgrade"
alias config='/usr/bin/git --git-dir=/Users/koltrast/.cfg/ --work-tree=/Users/koltrast'
