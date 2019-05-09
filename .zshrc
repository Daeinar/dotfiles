# General
export LANG=en_US.UTF-8
export LC_ALL=$LANG
export LC_CTYPE=$LANG
export ZSH=~/.zsh

# Load platform-specific settings
os=`uname | awk '{print tolower($0)}'`
source $ZSH/$os.zsh

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
