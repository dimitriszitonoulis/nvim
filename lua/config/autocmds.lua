-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`


-- highlight text on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Higlight text on yanking",
	pattern = "*",
	callback = function()
	vim.highlight.on_yank({ timeout = 100 })
	end,
})


