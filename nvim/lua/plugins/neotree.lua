return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			lazy = false,
			filesystem = {
				hijack_netrw_behavior = "open_current",
			},
		})
		vim.keymap.set("n", "<leader>E", ":Neotree toggle right <Cr>", {})
		vim.keymap.set("n", "<leader>e", ":Neotree toggle current<Cr>", {})
	end,
}
