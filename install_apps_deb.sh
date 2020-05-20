#!/bin/bash

cd ~

# Install Apt Packages I want
sudo apt install git vim tmux screenfetch powerline -y

### Setup steps for VIM ###
# Install VIM plugin manager
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install Airline for VIM
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

# Install Airline Themes for VIM
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes

# Install Color Scheme
mkdir -p ~/.vim/colors
wget -O ~/.vim/colors/wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400

mv ~/.bashrc ~/.bashrc.old
ln -s ~/dotfiles/.bashrc ~/.bashrc

mv ~/.vimrc ~/.vimrc.old
ln -s ~/dotfiles/.vimrc ~/.vimrc

mv ~/.tmux.conf ~/.tmux.conf.old
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

mv ~/.gitconfig ~/.gitconfig.old
ln -s ~/dotfiles/.gitconfig ~/.gitconfig

