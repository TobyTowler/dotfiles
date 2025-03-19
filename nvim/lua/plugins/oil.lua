return {
    "stevearc/oil.nvim",
    opts = {
        win_options = {
            winbar = "%{v:lua.require('oil').get_current_dir()}",
        },
        -- config = function()
        --     require("oil").setup({
        default_file_explorer = true,
        delete_to_trash = true,
        skip_confirm_for_simple_edits = true,
        view_options = {
            show_hidden = true,
            natural_order = true,
        },
        keymaps = {
            ["<BS>"] = "actions.parent",
            -- ["-"] = "actions.parent",
            ["<leader>e"] = "actions.close",
        },
        vim.keymap.set("n", "<leader>e", ":Oil<Cr>", { desc = "toggle Oil" }),
        --     })
        -- end,
        --
        vim.keymap.set("n", "<leader>E", function()
            vim.cmd("vsplit | wincmd l")
            require("oil").open()
        end),

        dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
        -- dependencies = { 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    },


}
