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

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function(args)
        require("conform").format({ bufnr = args.buf })
    end,
})


vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
    callback = function()
        -- try_lint without arguments runs the linters defined in `linters_by_ft`
        -- for the current filetype
        require("lint").try_lint()

        -- You can call `try_lint` with a linter name or a list of names to always
        -- run specific linters, independent of the `linters_by_ft` configuration
        -- require("lint").try_lint("cspell")
    end,
})
