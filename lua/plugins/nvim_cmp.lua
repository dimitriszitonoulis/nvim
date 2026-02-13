-- For more info check the github page:
-- https://github.com/hrsh7th/nvim-cmp
--
-- At the bottom is a link to the wiki (https://github.com/hrsh7th/nvim-cmp/wiki/List-of-sources)
-- Click on any source you want to add
-- and you will be redirected to that source's github
-- Install the source and create a config for the source.
local cmp = require 'cmp'

require("cmp").setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            vim.snippet.expand(args.body)
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.

    }),
    sources = {
        { name = 'nvim_lsp' },
        { name = 'nvim_lsp_signature_help' },
        { name = 'nvim_lua' },
        {
            name = 'path',
            option = {
                pathMappings = {
                    ['@'] = '${folder}/src',
                    ['/'] = '${folder}/src/public/',
                    -- ['~@'] = '${folder}/src',
                    -- ['/images'] = '${folder}/src/images',

                },
            },
        },
        {
            name = 'buffer',
            keyword_length = 5
        },
    }
})
