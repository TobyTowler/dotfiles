return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("fzf-lua").setup({

            vim.api.nvim_set_keymap(
                "n",
                "<leader><leader>",
                [[<Cmd>lua require"fzf-lua".files()<CR>]],
                { desc = "find files" }
            ),
            vim.api.nvim_set_keymap(
                "n",
                "<leader>ff",
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
                "<leader>fd",
                [[<Cmd>lua require"fzf-lua".lsp_workspace_diagnostics()<CR>]],
                { desc = "diagnostics" }
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
                { desc = "builtin" }
            ),
            vim.api.nvim_set_keymap(
                "n",
                "<leader>fr",
                [[<Cmd>lua require"fzf-lua".lsp_references()<CR>]],
                { desc = "lsp references" }
            ),
        })
    end,
}
