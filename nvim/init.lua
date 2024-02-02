require("remap")
require("basic_vim_config")
require("plugins")
vim.cmd('colorscheme catppuccin-frappe')

vim.api.nvim_exec([[
autocmd VimEnter * silent! rightbelow vnew ~/.config/nvim/nvim-cheatsheet.md | setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile | setlocal filetype=markdown | vertical resize 30 | wincmd h
]], false)
