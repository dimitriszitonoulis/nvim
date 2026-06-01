-- in my keybinds I have set lsp_fallback = true
-- everytime format keybind is pressed
require("conform").setup({
    formatters_by_ft = {
        python = { "ruff_format" },
        html = { "prettierd" },
        htmldjango = { "prettierd" },
        bash = { "shfmt" },
        sh = { "shfmt" },
        zsh = { "shfmt" },
    },
    -- Set this to change the default values when calling conform.format()
    -- This will also affect the default values for format_on_save/format_after_save
    default_format_opts = {
        lsp_format = "fallback",
    },
    -- Set the log level. Use `:ConformInfo` to see the location of the log file.
    log_level = vim.log.levels.ERROR,
    -- Conform will notify you when a formatter errors
    notify_on_error = true,

    -- Auto command to format on save.
    -- I prefered to have it as a separate auto command in
    -- lua/config/autocmds.lua
    -- Both this and the auto command are can be found in:
    -- https://github.com/stevearc/conform.nvim
    -- format_on_save = {
    --     -- These options will be passed to conform.format()
    --     timeout_ms = 500,
    --     lsp_format = "fallback",
    -- },


    -- formatters = {
    --     prettierd = {
    --         options = {
    --             ft_parsers = {
    --                 html = "html",
    --                 htmldjango = "htmldjango",
    --             }
    --         },
    --         args = {
    --             "--tab-width",
    --             "2"
    --         },
    --     }
    -- },
})
