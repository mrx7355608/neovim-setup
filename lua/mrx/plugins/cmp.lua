local cmp = require'cmp'
local luasnip = require'luasnip'
local lspkind = require'lspkind'

require("luasnip.loaders.from_vscode").lazy_load()

vim.opt.completeopt = 'menu,menuone,preview'



cmp.setup{
    snippet = {
      expand = function(args)
          luasnip.lsp_expand(args.body)
      end,
    },

    mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ['<C-.>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
    }),
    
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
    }),

    -- configure lspkind for vs-code like icons
    formatting = {
        format = lspkind.cmp_format({
            maxwidth = 50,
            ellipsis_char = "...",
        }),
    },
}

