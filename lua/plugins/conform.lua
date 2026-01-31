-- in my keybinds I have set lsp_fallback = true
-- everytime format keybind is pressed
require("conform").setup({
    formatters_by_ft = {
        python = { "ruff_format" },
    }
})
