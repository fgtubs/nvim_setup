#!/bin/bash

sudo apt-get install -y cmake build-essential libtool-bin pkg-config unzip gettext automake autoconf ninja-build

git clone https://github.com/neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

cd ../
git clone https://github.com/fgtubs/nvim_setup.git
cd nvim_setup
sudo mv ~/.config
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
