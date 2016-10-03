export LANG=en_US.UTF-8
export LC_ALL=$LANG
export LC_CTYPE=$LANG

export GOPATH=~/Code/go
export PATH=/usr/local/bin:/usr/local/sbin:$PATH:$GOPATH/bin
export ZSH=~/.zsh
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

for config_file ($ZSH/*.zsh) source $config_file

autoload -U compinit
compinit -i
