# General
export LANG=en_US.UTF-8
export LC_ALL=$LANG
export LC_CTYPE=$LANG
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export ZSH=~/.zsh

# Homebrew
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Golang
export GOPATH=~/Code/go
export PATH=$PATH:$GOPATH/bin

# Rustup
export PATH=$PATH:$HOME/.cargo/bin
fpath+=~/.zfunc # auto completion

# Load all other ZSH modules
for config_file ($ZSH/*.zsh) source $config_file

autoload -U compinit
compinit -i
