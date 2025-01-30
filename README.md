# Koltrast's Dotfiles

This setup stores my dotfiles in a bare Git repository based on [this guide](https://www.atlassian.com/git/tutorials/dotfiles). It's simple, uses no symlinks, and version-controls config files directly in `$HOME`.

## Setup

```bash
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.config/zsh/.zshrc
```

## Usage

Manage dotfiles like regular Git files but with the `config` alias:

```bash
config status
config add .vimrc
config commit -m "Add vimrc"
config push
```

## Installing on New Systems

```bash
git clone --bare git@github.com:koltrast/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout
config config --local status.showUntrackedFiles no
```

### Conflict Handling

If conflicts occur, move existing files to a backup folder:

```bash
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
config checkout
```
