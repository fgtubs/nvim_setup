# nvim_setup

Installation process:

```
git clone https://github.com/fgtubs/nvim_setup.git
cd nvim_setup
sudo mv ~/.config
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
open plugins.lua
call: ```:PackerSync```

If you get error regarding the lsp, make sure you have the languages installed, for some lsp servers you need to install npm.
If there are problems with copying and pasting from clipboard, than use ```sudo apt install xclip``` to install the possiblity on your system
