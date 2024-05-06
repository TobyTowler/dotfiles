return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	-- or                              , branch = '0.1.x',
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		require("telescope").setup({})

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader><leader>", builtin.find_files, { desc = "find files" })
		vim.keymap.set("n", "<leader>g", builtin.live_grep, { desc = "live grep" })
		vim.keymap.set("n", "<C-b>", builtin.buffers, { desc = "search buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "help tags" })
	end,
}
