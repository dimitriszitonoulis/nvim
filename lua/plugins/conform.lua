-- in my keybinds I have set lsp_fallback = true
-- everytime format keybind is pressed
require("conform").setup({
    formatters_by_ft = {
        python = { "ruff_format" },
        html = { "prettierd" },
        htmldjango = { "prettierd" }
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
