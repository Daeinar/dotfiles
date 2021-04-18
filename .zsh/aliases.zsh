alias ll='ls -la'
alias lh='ls -lah'
alias ...='cd ../..'
alias tmux='tmux -u'
alias brewer='brew update && brew upgrade && brew cleanup && brew doctor'
alias getip='curl -s http://icanhazip.com'
alias grep='grep --color=auto'
alias openssl-homebrew="/usr/local/opt/openssl@1.1/bin/openssl"

# if [ -e "$HOME/.aliases-ssh" ]
# then
#   source $HOME/.aliases-ssh
# fi

# alias 'hub' with 'git'
if type hub > /dev/null; then
    eval "$(hub alias -s)"
fi
