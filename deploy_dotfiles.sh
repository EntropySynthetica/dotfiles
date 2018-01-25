#!/bin/bash

cd ~
mv ~/.bashrc ~/.bashrc.old
ln -s ~/dotfiles/.bashrc ~/.bashrc


mkdir -p ~/.vim/colors && cd ~/.vim/colors
wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
cd ~

mv ~/.vimrc ~/.vimrc.old
ln -s ~/dotfiles/.vimrc ~/.vimrc

mv ~/.tmux.conf ~/.tmux.conf.old
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

mv ~/.gitconfig ~/.gitconfig.old
ln -s ~/dotfiles/.gitconfig ~/.gitconfig  
