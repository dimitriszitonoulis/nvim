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

})

-- vim.pack.del({
--   { src = "https://github.com/nvim-mini/mini.pairs.git" },
--   { src = "https://github.com/folke/which-key.nvim.git" },
--   -- { src = "https://github.com/nvim-neo-tree/neo-tree.nvim.git" },
--   { src = 'https://github.com/neovim/nvim-lspconfig' },
-- })

require("config.options")
require("config.autocmds")
require("config.keymaps")

-- plugins
require("plugins")
