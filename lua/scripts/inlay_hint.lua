vim.api.nvim_create_user_command('ToggleInlay', function (opts)
    vim.lsp.inlay_hint.enable(0, not vim.lsp.inlay_hint.is_enabled())
    if vim.diagnostic.is_disabled() then
        vim.diagnostic.enable()
    else
        vim.diagnostic.disable()
    end
end, { })
