-- Used to simplify nvim/init.lua
-- This way I only have to do require("plugins") there

require("plugins.lang.lspconfig")
require("plugins.lang.mason")
require("plugins.lang.conform")
require("plugins.lang.nvim_lint")
require("plugins.lang.markview")
require("plugins.lang.ts_autotags") -- autoclose html tags

require("plugins.ide.telescope")
require("plugins.ide.trouble")
require("plugins.ide.nvim_cmp")
require("plugins.ide.mini_pairs")
require("plugins.ide.minidiff")


require("plugins.misc.whichkey")
require("plugins.misc.colorscheme")
require("plugins.misc.lualine")
require("plugins.misc.oil")

-- require("noice").setup()
require("nvim-web-devicons").setup()
-- This threw error
-- require('neo-tree').setup()
