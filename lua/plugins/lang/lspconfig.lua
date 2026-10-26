vim.lsp.enable({
    "lua_ls",
    "pyright",
    "clangd",
    "tinymist",
    "html",
    "bashls",
    "yamlls",
    "marksman",
    "lemminx",
    "nginx_language_server",
    "vtsls",
    "harper",
    "taplo"
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
                diagnosticMode = "openFilesOnly"
            },
        },
    },
})

vim.lsp.config("html", {
    filetypes = { "html", "htmldjango" },
})


vim.lsp.config("yamlls", {
    settings = {
        redhat = {
            telemetry = {
                enabled = false
            }
        },
        yaml = {
            validate = true,
            format = {
                enable = true
            },
            keyOrdering = false
        }
    }
})

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }
            }
        }
    }

})


-- For more info check: https://writewithharper.com/docs/integrations/neovim
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#harper_ls
vim.lsp.config("harper", {
    cmd = { "harper-ls", "--stdio" },
    root_markers = { ".harper-dictionary.txt", ".git" },
    filetypes = { "markdown", "text", "tex", "typst" },
    -- settings = {
    --
    -- }
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
