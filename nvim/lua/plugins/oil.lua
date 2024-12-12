return {
    "stevearc/oil.nvim",
    opts = {},
    config = function()
        require("oil").setup({
            default_file_explorer = true,
            delete_to_trash = true,
            skip_confirm_for_simple_edits = true,
            view_options = {
                show_hidden = true,
                natural_order = true,
            },
            keymaps = {
                ["<BS>"] = "actions.parent",
                ["-"] = "actions.parent",
                ["<leader>e"] = "actions.close",
            },
            vim.keymap.set("n", "<leader>e", ":Oil<Cr>", { desc = "toggle Oil" }),
        })
    end,

    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons


}
