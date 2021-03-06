#!/bin/bash

set -e

sudo yum -y install libtool autoconf automake cmake gcc gcc-c++ make pkgconfig unzip

cd $HOME
git clone https://github.com/neovim/neovim.git
cd neovim
make -j 4 CMAKE_BUILD_TYPE=Release
sudo make -j 4 install

mkdir -p $HOME/.config
cd $HOME/.config
ln -s $HOME/.vim nvim
cd nvim
ln -s $HOME/.vimrc init.vim

source $HOME/.bashrc
