local opt = vim.opt
opt.number = true
opt.tabstop = 8
opt.shiftwidth = 4
opt.smarttab = true
opt.expandtab = true
opt.softtabstop = 0
opt.ls = 2

opt.termguicolors = true

-- Set netrw to vertically expandtab to the right
vim.g.netrw_altv = 1
-- Set netrw to use tree view default
vim.g.netrw_liststyle = 3

---- Plugins ----
-- Apply plugins
vim.cmd 'source ~/.config/nvim/lua/plugins/config.vim'

---- Keymaps ----
-- Applu coc keymap
require("keymap.coc")
-- Apply custom keymap
require("keymap.custom")

---- Theme ----
vim.cmd 'colorscheme catppuccin'
