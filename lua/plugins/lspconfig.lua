vim.lsp.enable({
    "lua_ls",
    "pyright",
    "clangd",
    "tinymist",
    "html",
})

vim.lsp.config("pyright", {
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "basic",
                diagnosticSeverityOverrides = {
                    reportWildcardImportFromLibrary = "none",
                    reportWildcardImport = "none",
                },
            },
        },
    },
})

vim.lsp.config("html", {
    filetypes = { "html", "htmldjango"},
})

-- vim.lsp.config("clangd", {
--     cmd = { "clangd" },
--     filetypes = { "c", "cpp", "objc", "objcpp" },
--     root_dir = require("lspconfig.util").root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
--     on_attach = function(client, _)
--         client.server_capabilities.documentformattingprovider = false
--         client.server_capabilities.documentrangeformattingprovider = false
--     end,
-- })
