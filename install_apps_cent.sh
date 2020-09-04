#!/bin/bash

## Script to setup my enviroment on CentOS / Redhat 8

cd ~

sudo yum install git vim tmux neofetch python3 -y

### Setup steps for VIM ###
# Install VIM plugin manager
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install Airline for VIM
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

# Install Airline Themes for VIM
mkdir -p ~/.vim/autoload/airline/themes
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
curl -LSso ~/.vim/autoload/airline/themes/sonokai.vim https://raw.githubusercontent.com/sainnhe/sonokai/v0.1.1/autoload/airline/themes/sonokai.vim

# Install Color Schemes
mkdir -p ~/.vim/colors
curl -LSso ~/.vim/colors/wombat256grf.vim https://raw.githubusercontent.com/gryf/wombat256grf/master/colors/wombat256grf.vim
curl -LSso ~/.vim/colors/sonokai.vim https://raw.githubusercontent.com/sainnhe/sonokai/v0.1.1/colors/sonokai.vim

mv ~/.bashrc ~/.bashrc.old
ln -s ~/dotfiles/.bashrccent ~/.bashrc

mv ~/.vimrc ~/.vimrc.old
ln -s ~/dotfiles/.vimrc ~/.vimrc

mv ~/.tmux.conf ~/.tmux.conf.old
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

mv ~/.gitconfig ~/.gitconfig.old
ln -s ~/dotfiles/.gitconfig ~/.gitconfig

## Setup Powerline
#mv ~/.config/powerline ~/.config/powerline_bak
#ln -s ~/dotfiles/powerline ~/.config/powerline

# Make Directory for kubectl configs
mkdir -p ~/.kube
