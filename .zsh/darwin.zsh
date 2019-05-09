# MacOS-specific configurations

# Homebrew
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# General
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Python
#export PATH=/Users/cosh/Library/Python/3.6/bin:$PATH

# LLVM (from Homebrew)
export PATH=/usr/local/opt/llvm/bin:$PATH

# Golang
export GOPATH=/Volumes/Data/code/go
export PATH=$PATH:$GOPATH/bin

# Rustup
export PATH=$PATH:$HOME/.cargo/bin
fpath+=~/.zfunc # auto completion
