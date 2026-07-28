-- require("lint").setup({
--     linters_by_ft = {
--         markdown = { "markdownlint-cli2" },
--     }
-- })

require("lint").linters_by_ft = {
    markdown = { "markdownlint-cli2" },
    javascript = { "eslint_d" },
    typescript = { "eslint_d" },
    javascriptreact = { "eslint_d" },
    typescriptreact = { "eslint_d" },
    html = { "htmlhint" },
    htmldjango = { "htmlhint" },
    bash = { "spellcheck" },
}
