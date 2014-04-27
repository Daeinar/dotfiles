export LANG=en_US.UTF-8
export LC_ALL=$LANG
export LC_CTYPE=$LANG

export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export ZSH=~/.zsh

for config_file ($ZSH/*.zsh) source $config_file

autoload -U compinit
compinit -i
