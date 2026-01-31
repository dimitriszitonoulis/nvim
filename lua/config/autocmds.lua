-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`


-- highlight text on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Higlight text on yanking",
    pattern = "*",
    callback = function()
        vim.hl.on_yank({ timeout = 100 })
    end,
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = {
        "python",
        "lua",
    },
    callback = function()
        vim.treesitter.start()
        -- vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        -- vim.wo[0][0].foldmethod = 'expr'
    end,

})
