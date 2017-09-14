# smart urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

# file rename magick
bindkey "^[m" copy-prev-shell-word

# jobs
setopt long_list_jobs

# pager
export PAGER="less"

# autojump
if [ `uname` = "Darwin" ];
then
    [[ -f `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
fi

# virtualenv
if [ -e "/usr/local/bin/virtualenvwrapper.sh" ]
then
    export WORKON_HOME=~/.virtualenvs # virtualenvwrapper
    source /usr/local/bin/virtualenvwrapper.sh
    #source /usr/local/opt/autoenv/activate.sh # autoenv
fi
