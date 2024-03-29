#!/bin/bash

sudo apt-get update

# install npm for lsp
sudo apt install -y nodejs
sudo apt install -y npm

sudo apt-get install -y cmake build-essential libtool-bin pkg-config unzip gettext automake autoconf ninja-build
sudo apt install xclip

git clone https://github.com/neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

cd ../
git clone https://github.com/fgtubs/nvim_setup.git
cd nvim_setup
sudo mv nvim ~/.config
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
