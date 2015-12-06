alias ll='ls -la'
alias lh='ls -lah'
alias ...='cd ../..'
alias tmux='tmux -u'
alias brewer='brew update && brew upgrade --all && brew cleanup && brew doctor'
alias getip='curl -s http://icanhazip.com'
alias grep='grep --color=auto'
alias sage='/Applications/sage/sage'

if [ -e "$HOME/.aliases-ssh" ]
then
  source $HOME/.aliases-ssh
fi

# alias 'hub' with 'git'
eval "$(hub alias -s)"
