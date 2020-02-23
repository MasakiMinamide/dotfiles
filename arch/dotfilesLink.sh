#!/bin/sh

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/i3/config ~/.config/i3
ln -sf ~/dotfiles/polybar/config ~/.config/polybar
ln -sf ~/dotfiles/i3status/config ~/.config/i3status
ln -sf ~/dotfiles/betterlockscreenrc ~/.config/
ln -sf ~/dotfiles/i3/compton.conf ~/.config/

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/plugin/Vundle.vim
