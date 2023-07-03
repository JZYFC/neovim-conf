local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    { "catppuccin/nvim", name = "catppuccin", priority = 10 },
    "vim-airline/vim-airline",
    "nvim-tree/nvim-web-devicons",
    { "akinsho/bufferline.nvim", version = "*" },
    "nvim-tree/nvim-tree.lua",
    "windwp/nvim-autopairs",
    { "nvim-treesitter/nvim-treesitter" , build = ":TSUpdate" },

    { "williamboman/mason.nvim", build = ":MasonUpdate"  }, -- :MasonUpdate updates registry contents
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    { "folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
    "lvimuser/lsp-inlayhints.nvim",
}
local opts = {}
require("lazy").setup(plugins, opts)
