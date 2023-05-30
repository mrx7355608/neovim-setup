local nullls = require('null-ls')

local formatting = nullls.builtins.formatting
local diagnostics = nullls.builtins.diagnostics
local augroup = vim.api.nvim_create_augroup('LspFormatting', {})


nullls.setup({
    sources = {
        formatting.prettier,
        formatting.stylua,
        diagnostics.eslint_d
    },

    -- configure format on save
    on_attach = function(current_client, bufnr)
        if current_client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({
                        filter = function(client)
                            --  only use null-ls for formatting instead of lsp server
                            return client.name == "null-ls"
                        end,
                        bufnr = bufnr,
                    })
                end,
            })
        end
    end,
})
