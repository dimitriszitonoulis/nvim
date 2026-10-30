require("nvim-treesitter").setup({
    highlight = { enable = true }
})

require("nvim-treesitter").install({
    "python",
    "lua",
    "c",
    "cpp",
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
})


-- vim.treesitter.start()
