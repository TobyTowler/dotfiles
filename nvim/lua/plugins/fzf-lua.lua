return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- calling `setup` is optional for customization
		require("fzf-lua").setup({
			vim.api.nvim_set_keymap(
				"n",
				"<leader>p",
				[[<Cmd>lua require"fzf-lua".files()<CR>]],
				{ desc = "find files" }
			),
			vim.api.nvim_set_keymap(
				"n",
				"<leader>fg",
				[[<Cmd>lua require"fzf-lua".grep_project()<CR>]],
				{ desc = "grep" }
			),
			vim.api.nvim_set_keymap(
				"n",
				"<leader>fb",
				[[<Cmd>lua require"fzf-lua".buffers()<CR>]],
				{ desc = "find buffers" }
			),
			vim.api.nvim_set_keymap(
				"n",
				"<leader>fk",
				[[<Cmd>lua require"fzf-lua".builtin()<CR>]],
				{ desc = "find keymaps" }
			),
		})
	end,
}
