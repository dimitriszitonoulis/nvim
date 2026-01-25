-- Used to simplify nvim/init.lua
-- This way I only have to do require("plugins") there
-- require("conform")
require("plugins.whichkey")
require("plugins.lspconfig")
require("plugins.mason")
require("plugins.mini_pairs")
require("plugins.telescope")
require("plugins.colorscheme")
require("plugins.trouble")
require("plugins.lualine")
require("plugins.nvim_cmp")

-- require("noice").setup()
require("nvim-web-devicons").setup()
-- This threw error
-- require('neo-tree').setup()
