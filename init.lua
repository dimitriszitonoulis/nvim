vim.pack.add({
    { src = "https://github.com/nvim-mini/mini.pairs.git" },
    { src = "https://github.com/folke/which-key.nvim.git" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/mason-org/mason.nvim.git" },
    { src = "https://github.com/stevearc/conform.nvim.git" },
    { src = "https://github.com/nvim-lua/plenary.nvim.git" },
    { src = "https://github.com/nvim-telescope/telescope.nvim.git" },
    { src = "https://github.com/catppuccin/nvim.git" },
    { src = "https://github.com/folke/trouble.nvim" },
    { src = "https://github.com/nvim-lualine/lualine.nvim.git" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons.git" },
    -- for autocompetion
    { src = "https://github.com/hrsh7th/nvim-cmp.git" },
    { src = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help.git" },
    { src = "https://github.com/hrsh7th/cmp-buffer.git" },
    { src = "https://github.com/hrsh7th/cmp-path.git" },
    { src = "https://github.com/hrsh7th/cmp-nvim-lsp.git" },
    { src = "https://github.com/hrsh7th/cmp-nvim-lua.git" },

    -- autoclose html tags
    { src = "https://github.com/windwp/nvim-ts-autotag.git" },

    --file explorer
    { src = "https://github.com/stevearc/oil.nvim.git" },

    -- for semantic highlighting
    { src = "https://github.com/nvim-treesitter/nvim-treesitter.git" }
})

-- vim.pack.del({
--     { "nui.nvim" },
--     { "noice.nvim.git" },
--     { "neo-tree.nvim.git" },
-- })

-- require("noice")

require("config.options")
require("config.autocmds")
require("config.keymaps")

-- plugins
require("plugins")
