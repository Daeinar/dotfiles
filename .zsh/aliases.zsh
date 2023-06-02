alias ll='ls -la'
alias lh='ls -lah'
alias ...='cd ../..'
alias tmux='tmux -u'
alias brewer='brew update && brew upgrade && brew cleanup && brew doctor'
alias getip='curl -s http://icanhazip.com'
alias grep='grep --color=auto'
alias openssl3="/usr/local/opt/openssl@3/bin/openssl"

# alias 'hub' with 'git'
if type hub > /dev/null; then
    eval "$(hub alias -s)"
fi
