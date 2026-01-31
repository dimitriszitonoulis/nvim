require("nvim-treesitter").setup({
    highlight = { enable = true }
})

require("nvim-treesitter").install({
    "python",
    "lua",
    "c",
    "cpp",
    "java",
-- web dev
    "html",
    "css",
    "javascript",
    "typescript",
-- other
    "markdown",
    "nginx",
})


-- vim.treesitter.start()
