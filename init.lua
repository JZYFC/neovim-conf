-- Use nvimtree: disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local opt = vim.opt
opt.number = true
opt.tabstop = 8
opt.shiftwidth = 4
opt.smarttab = true
opt.expandtab = true
opt.softtabstop = 0
opt.ls = 2
opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true

-- Set netrw to vertically expandtab to the right
-- vim.g.netrw_altv = 1
-- Set netrw to use tree view default
-- vim.g.netrw_liststyle = 3

---- Plugins ----
-- Apply plugins
require("plugins.lazy")
require("plugins.bufferline")
require("plugins.nvim-tree")
require("plugins.autopairs")
require("plugins.lsp")
require("plugins.cmp")
require("plugins.trouble")

---- Keymaps ----
-- Applu coc keymap
require("keymap.lsp")
-- Apply custom keymap
require("keymap.custom")

---- Theme ----
vim.cmd 'colorscheme catppuccin'
