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
vim.keymap.set("n", "<C-Right>", ":vertical res +1<Cr>", { desc = "Inc win width by 1 (default)", silent = true, noremap = true })
vim.keymap.set("n", "<C-Left>", ":vertical res -1<Cr>", { desc = "Inc win width by 1 (default)", silent = true, noremap = true })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move cursor to left win", silent = true, noremap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move cursor to down win", silent = true, noremap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move cursor to up win", silent = true, noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move cursor to right win", silent = true, noremap = true })

-- file explorer
vim.keymap.set("n", "<leader>e", ":Explore<CR>", { desc = "File explorer", silent = true, noremap = true })

-- source, write file operations
vim.keymap.set("n", "<leader>o", ":update<CR> :source<CR>", {desc = "Save and source file"} )
vim.keymap.set("n", "<leader>w", ":write<CR>", { desc = "Write file" } )
vim.keymap.set("n", "<C-s>", ":write<CR>", { desc = "Write file" })

-- lsp
vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions", silent = true})
vim.keymap.set({"n", "v"}, "<leader>cf", vim.lsp.buf.format, {desc = "Format code", silent = true})


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
