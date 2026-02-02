-- Used to simplify nvim/init.lua
-- This way I only have to do require("plugins") there
require("plugins.conform")
require("plugins.whichkey")
require("plugins.lspconfig")
require("plugins.mason")
require("plugins.mini_pairs")
require("plugins.telescope")
require("plugins.colorscheme")
require("plugins.trouble")
require("plugins.lualine")
require("plugins.nvim_cmp")
require("plugins.ts_autotags") -- autoclose html tags
-- require("plugins.nvim_treesitter")


-- require("noice").setup()
require("nvim-web-devicons").setup()
-- This threw error
-- require('neo-tree').setup()
