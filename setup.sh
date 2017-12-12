#!/bin/zsh
git submodule init
git submodule update

stow vim
stow zsh

source ~/.zshrc
vim -c PluginInstall
