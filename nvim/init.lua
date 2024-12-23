local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('EdenEast/nightfox.nvim')
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-tree/nvim-tree.lua')

vim.call('plug#end')

vim.cmd('set termguicolors')
vim.cmd('colorscheme nordfox')

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require("nvim-tree").setup({
  view = {
    width = 45,
  },
})

vim.cmd('set number')
vim.cmd('set autochdir')

vim.cmd('cnoreabbrev ft NvimTreeOpen')

vim.cmd('set shiftwidth=2 smarttab')
vim.cmd('set expandtab')
