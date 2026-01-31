vim.o.number = true
vim.o.relativenumber = true

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.wrap = false

vim.o.undofile = true -- undo changes after restart

vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true --highlight search as letters are typed

vim.o.signcolumn = "yes"

vim.opt.backspace = { "start", "eol", "indent" }

vim.o.splitright = true
vim.o.splitbelow = true

vim.opt.clipboard:append("unnamedplus") --combine nvim and system register

vim.o.winborder = "rounded"

-- fold using treesitter plugin
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
-- start with all folds open (check :h foldlevelstart)
vim.opt.foldlevelstart = 99
-- vim.o.foldcolumn = "auto:5"

-- Disable autoformatting on save
vim.g.autoformat = false
