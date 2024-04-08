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

-- WSL clipboard support
if vim.fn.has('wsl') then
  vim.cmd [[
  augroup Yank
  autocmd!
  autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
  augroup END
  ]]
end

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
-- Apply custom scripts --
require("scripts.inlay_hint")


---- Theme ----
vim.cmd 'colorscheme catppuccin'
