return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        -- config = function()
        --     vim.cmd.colorscheme("catppuccin-macchiato")
        -- end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        opts = {},
    },

    {
        "otakutyrant/onedark.nvim",
        branch = "multiple_colorschemes",
        names = {
            "onedark-dark",
            "onedark-darker",
            "onedark-cool",
            "onedark-deep",
            "onedark-warm",
            "onedark-warmer",
        },
        lazy = false,
        opts = {}
    },
    {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        config = function()
            vim.cmd.colorscheme("nordic")
        end,
    },
    {
        "morhetz/gruvbox",
        lazy = false,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine"
    },
}
