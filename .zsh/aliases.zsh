alias ll='ls -la'
alias lh='ls -lah'
alias ...='cd ../..'
alias tmux='tmux -u'
alias brewer='brew update && brew upgrade && brew cleanup && brew doctor'
alias getip='curl -s http://icanhazip.com'
alias grep='grep --color=auto'
alias sage='/Applications/sage/sage'

if [ -e "$HOME/.aliases-ssh" ]
then
  source $HOME/.aliases-ssh
fi

