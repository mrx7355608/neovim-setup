require('mason').setup()
local mason_nullls = require('mason-null-ls')

require('mason-lspconfig').setup({
    ensure_installed = {
        'tsserver',
        'html',
        'tailwindcss',
        'cssls',
        'omnisharp'
    }
})


mason_nullls.setup({
    ensure_installed = {
        'prettier',
        'eslint_d',
        'stylua'
    }
})
