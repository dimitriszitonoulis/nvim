local conform = require("conform")

-- Add any additional keymaps here
vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

vim.keymap.set("n", "<Esc>", ":nohl<CR>", { desc = "Clears search highlight", silent = true })

-- alter pasting behaviour
vim.keymap.set("x", "<p>", '"_dp', { desc = "Paste without replacing clipboard", silent = true, noremap = true })
vim.keymap.set("x", "<P>", '"_dP', { desc = "Paste without replacing clipboard", silent = true, noremap = true })
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without copying", silent = true, noremap = true })

-- window behaviour
vim.keymap.set("n", "<leader>-", ":split<CR>", { desc = "Split window horizontally", silent = true, noremap = true })
vim.keymap.set("n", "<leader>|", ":vs<CR>", { desc = "Split window horizontally", silent = true, noremap = true })
vim.keymap.set("n", "<leader>wd", "<cmd>close<CR>", { desc = "Close current window", silent = true, noremap = true })

vim.keymap.set("n", "<C-Up>", ":res +1<Cr>", { desc = "Inc win height by 1 (default)", silent = true, noremap = true })
vim.keymap.set("n", "<C-Down>", ":res -1<Cr>", { desc = "Dec win height by 1 (default)", silent = true, noremap = true })
vim.keymap.set("n", "<C-Right>", ":vertical res +1<Cr>",
    { desc = "Inc win width by 1 (default)", silent = true, noremap = true })
vim.keymap.set("n", "<C-Left>", ":vertical res -1<Cr>",
    { desc = "Inc win width by 1 (default)", silent = true, noremap = true })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move cursor to left win", silent = true, noremap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move cursor to down win", silent = true, noremap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move cursor to up win", silent = true, noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move cursor to right win", silent = true, noremap = true })

-- buffers
vim.keymap.set("n", "L", ":bn<CR>", { desc = "Goto next buffer", silent = true, noremap = true })
vim.keymap.set("n", "H", ":bp<CR>", { desc = "Goto prev buffer", silent = true, noremap = true })
vim.keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Close buffer", silent = true })

-- file explorer
vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>", { desc = "File explorer", silent = true, noremap = true })
-- vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "File explorer", silent = true, noremap = true })

vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader><leader>", ":Telescope live_grep<CR>", { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = "Telescope help tags" })


-- source, write file operations
vim.keymap.set("n", "<leader>o", ":update<CR> :source<CR>", { desc = "Save and source file" })
vim.keymap.set("n", "<C-s>", ":write<CR>", { desc = "Write file" })

-- lsp, code actions
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions", silent = true })
vim.keymap.set({ "n", "v" }, "<leader>cr", vim.lsp.buf.rename, { desc = "Code actions", silent = true })
-- vim.keymap.set({ "n", "v" }, "<leader>cf", vim.lsp.buf.format, { desc = "Format code", silent = true })
vim.keymap.set({ "n", "v" }, "<leader>cf",
    function()
        conform.format()
    end, { desc = "Format code", silent = true })

vim.keymap.set("n", "<leader>cd", vim.lsp.buf.hover,
    { desc = "Display info under the cursor", silent = true, noremap = true })
-- vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Show diagnostic under cursor", silent = true, noremap = true})
-- vim.keymap.set("n", "<leader>cd", function()
--   vim.diagnostic.open_float(0, {
--     scope = "cursor",
--     focus = true,
--   })
--   end, { desc = "Show diagnostic under cursor", silent = true, noremap = true})

vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>",
    { desc = "Diagnostics (Trouble)", silent = true })
vim.keymap.set("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
    { desc = "Buffer Diagnostics (Trouble)" })
vim.keymap.set("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
vim.keymap.set("n", "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
    { desc = "LSP Definitions / references / ... (Trouble)" })
vim.keymap.set("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
vim.keymap.set("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })

-- git
--
-- vim.keymap.set("n", "<leader>gc", "Telescope git_bcommits", { desc = "", silent=true, noremap=true})
-- vim.keymap.set("n", "<leader>gr", "Telescope git_bcommits_range", { desc = "", silent=true, noremap=true})
vim.keymap.set("n", "<leader>gb", ":Telescope git_branches<CR>", { desc = "branches", silent = true, noremap = true })
vim.keymap.set("n", "<leader>gc", ":Telescope git_commits<CR>", { desc = "commits", silent = true, noremap = true })
vim.keymap.set("n", "<leader>gf", ":Telescope git_files<CR>", { desc = "files", silent = true, noremap = true })
vim.keymap.set("n", "<leader>gs", ":Telescope git_status<CR>", { desc = "status", silent = true, noremap = true })
vim.keymap.set("n", "<leader>ga", ":Telescope git_stash<CR>", { desc = "stash", silent = true, noremap = true })
--------------------------------------------------------------------------------
-- For ctrl + <c, v, x> similar to other editors
-- Copy
-- vim.keymap.set('n', '<C-c>', '"+yy', { noremap = true, silent = true })
-- vim.keymap.set('v', '<C-c>', '"+y', { noremap = true, silent = true })

-- Paste
-- vim.keymap.set('n', '<C-v>', '"+P', { noremap = true, silent = true })
-- vim.keymap.set('v', '<C-v>', '"+P', { noremap = true, silent = true })
-- vim.keymap.set('i', '<C-v>', '<C-r>+', { noremap = true, silent = true })

-- -- Cut
-- vim.keymap.set('n', '<C-x>', '"+dd', { noremap = true, silent = true })
-- vim.keymap.set('v', '<C-x>', '"+d', { noremap = true, silent = true })

-- -- Undo
-- vim.keymap.set('n', '<C-z>', 'u', { noremap = true, silent = true })
--
-- --Redo
-- vim.keymap.set('n', '<C-y>', 'u', { noremap = true, silent = true })
---------------------------------------------------------------------------------
