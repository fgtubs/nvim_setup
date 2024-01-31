require("remap")
require("basic_vim_config")
require("plugins")
vim.cmd('colorscheme catppuccin-frappe')

vim.api.nvim_exec([[
autocmd VimEnter * silent! rightbelow vnew ~/.config/nvim/nvim-cheatsheet.md | vertical resize 30 | wincmd h
autocmd VimEnter * setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile
autocmd VimEnter * setlocal filetype=markdown
]], false)
