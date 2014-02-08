### dotfiles: collection of various config files
---

#### setup notes

##### vim
    ln -s /path/to/dotfiles/.vimrc ~/.vimrc
    ln -s /path/to/dotfiles/.vim ~/.vim
    git submodule update --init

##### tmux (non OS X)
    ln -s /path/to/dotfiles/.tmux.conf ~/.tmux.conf

##### tmux (OS X)
    ln -s /path/to/dotfiles/.tmux-osx.conf ~/.tmux.conf
    ln -s /path/to/dotfiles/.tmux.conf ~/.tmux-default.conf
