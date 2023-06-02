# General
export LANG=en_US.UTF-8
export LC_ALL=$LANG
export LC_CTYPE=$LANG
export ZSH=~/.zsh
export GPG_TTY=$(tty)

# Load platform-specific settings (set PATHs etc.)
OS=`uname | awk '{print tolower($0)}'`

# General
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Python
#export PATH=/Users/cosh/Library/Python/3.6/bin:$PATH
#export PATH=/usr/local/Cellar/python/3.7.6_1/bin:$PATH

# LLVM (from Homebrew)
# export PATH=/usr/local/opt/llvm/bin:$PATH

# Golang
export GOPATH=$HOME/Sync/code/go
export PATH=$PATH:$GOPATH/bin

# Rustup
export PATH=$PATH:$HOME/.cargo/bin
fpath+=~/.zfunc # auto completion

# Ruby
# export PATH=/usr/local/opt/ruby/bin:$PATH

# NVM (default)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# NVM (workaround for faster loading); credit: https://www.reddit.com/r/node/comments/4tg5jg/lazy_load_nvm_for_faster_shell_start/d5ib9fs/
#declare -a NODE_GLOBALS=(`find ~/.nvm/versions/node -maxdepth 3 -type l -wholename '*/bin/*' | xargs -n1 basename | sort | uniq`)
#
#NODE_GLOBALS+=("node")
#NODE_GLOBALS+=("nvm")
#
#load_nvm () {
#    export NVM_DIR=~/.nvm
#    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
#}
#
#for cmd in "${NODE_GLOBALS[@]}"; do
#    eval "${cmd}(){ unset -f ${NODE_GLOBALS}; load_nvm; ${cmd} \$@ }"
#done

# Homebrew
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# iterm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# autojump
[[ -f `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# sekey (https://github.com/sekey/sekey)
export SSH_AUTH_SOCK=$HOME/.sekey/ssh-agent.ssh

# Load all other ZSH config files
configs=(aliases.zsh appearance.zsh \
         colors.zsh completion.zsh \
         correction.zsh directories.zsh \
         history.zsh keybindings.zsh \
         misc.zsh prompt.zsh \
         termsupport.zsh)
for c in $configs ; do
    source $ZSH/$c
done

autoload -U compinit
compinit -i
