-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- resize splits if window got resized
vim.api.nvim_create_autocmd({ "VimResized" }, {
	callback = function()
		local current_tab = vim.fn.tabpagenr()
		vim.cmd("tabdo wincmd =")
		vim.cmd("tabnext " .. current_tab)
	end,
})

--Neotree on launch
-- vim.api.nvim_create_autocmd("VimEnter", {
-- 	command = "set nornu nonu | Neotree toggle current",
-- })
-- vim.api.nvim_create_autocmd("BufEnter", {
-- 	command = "set rnu nu",
-- })
