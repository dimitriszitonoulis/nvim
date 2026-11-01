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
    -- same as the list in the treesitter plugin install
    pattern = {
        -- "python",
        -- "lua",
        -- "javascript",
        -- "typescript",
        -- "c",
        --
        "python",
        "lua",
        "c",
        "cpp",
        "make",
        "java",
        "bash",
        -- web dev
        "html",
        "htmldjango",
        "css",
        "javascript",
        "typescript",
        "json5",
        -- other
        "markdown",
        "markdown_inline",
        "latex",
        "nginx",
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
        -- This is for when hoevering over a function.
        -- Othewise the linter is activated for the markdown
        -- in the documentation
        if vim.bo.buftype ~= "" then
            return
        end

        -- try_lint without arguments runs the linters defined in `linters_by_ft`
        -- for the current filetype
        require("lint").try_lint()

        -- You can call `try_lint` with a linter name or a list of names to always
        -- run specific linters, independent of the `linters_by_ft` configuration
        -- require("lint").try_lint("cspell")
    end,
})

-- check for spell in text filetypes
-- Also change conceallevel for documentation windows
vim.api.nvim_create_autocmd("FileType", {
    -- group = augroup("wrap_spell"),
    pattern = { "text", "plaintex", "typst", "gitcommit", "markdown" },
    callback = function()
        -- Do not activate spellcheck when in documentatio window
        if vim.bo.buftype ~= "" then
            --prevenents weird symbols in markdown
            vim.opt_local.conceallevel = 2
            -- does not show markdown source when the cursor
            -- is in the documentation window in normal mode
            vim.opt_local.concealcursor = "n"
            return
        end

        -- vim.opt_local.wrap = true
        vim.opt_local.spell = true
        vim.opt_local.spelllang = "en,el"
    end,
})
