#!/bin/sh

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/i3/config ~/.config/i3

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/plugin/Vundle.vim
