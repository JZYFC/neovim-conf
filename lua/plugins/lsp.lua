local lspconfig = require('lspconfig')

vim.diagnostic.config({
    virtual_text = {
        prefix = '●'
    },
    signs = true,
    underline = true,
    update_in_insert = true,
    severity_sort = false,
})
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

require('mason').setup(

)
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
    },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- C/C++
vim.lsp.enable('clangd')
-- Lua
vim.lsp.enable('lua_ls')
-- Rust
vim.lsp.enable('rust_analyzer')
-- Zig
vim.lsp.enable('zls')

