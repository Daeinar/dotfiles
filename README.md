### dotfiles: collection of various config files
---

#### setup notes

##### zsh
    ln -s /path/to/dotfiles/.zshrc ~/.zshrc
    ln -s /path/to/dotfiles/.zsh ~/.zsh

##### vim
    ln -s /path/to/dotfiles/.vimrc ~/.vimrc
    ln -s /path/to/dotfiles/.vim ~/.vim
    git submodule update --init

##### neovim
    mkdir -p ~/.config/nvim
    ln -s /path/to/dotfiles/dot-vimrc.conf ~/.config/nvim/init.vim
    ln -s /path/to/dotfiles/dot-nvim-pack-lock.json ~/.config/nvim/nvim-pack-lock.json

Plugins are cloned by nvim itself on the first start, at the revisions in the
lock file.

##### tmux
    ln -s /path/to/dotfiles/dot-tmux.conf ~/.tmux.conf

##### alacritty
    mkdir -p ~/.config/alacritty
    ln -s /path/to/dotfiles/alacritty.toml ~/.config/alacritty/alacritty.toml
    ln -s /path/to/dotfiles/catppuccin-mocha.toml ~/.config/alacritty/catppuccin-mocha.toml

The theme is a vendored copy of catppuccin-mocha.toml from
github.com/catppuccin/alacritty; refresh it by downloading the file again.

#### git
    ln -s /path/to/dotfiles/.gitconfig ~/.gitconfig
