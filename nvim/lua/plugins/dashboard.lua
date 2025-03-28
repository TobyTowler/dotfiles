return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
        require("dashboard").setup({
            theme = "doom",
            config = {
                header = {
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    " ██████╗ ██╗   ██╗███████╗███████╗██╗ ██████╗ ",
                    " ██╔══██╗██║   ██║██╔════╝██╔════╝██║██╔═══██╗",
                    " ██████╔╝██║   ██║███████╗███████╗██║██║   ██║",
                    " ██╔═══╝ ██║   ██║╚════██║╚════██║██║██║   ██║",
                    " ██║     ╚██████╔╝███████║███████║██║╚██████╔╝",
                    "╚═╝      ╚═════╝ ╚══════╝╚══════╝╚═╝ ╚═════╝",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                }, --your header,
                center = {
                    {
                        action = "ene | startinsert",
                        desc = " New File",
                        icon = "📄 ",
                        key = "n",
                        key_format = " %s", -- remove default surrounding `[]`
                    },
                    {
                        action = "FzfLua files",
                        icon = "🔎 ",
                        desc = " Find File           ",
                        key = "f",
                        key_format = " %s", -- remove default surrounding `[]`
                    },
                    {
                        action = ":Oil./<Cr>",
                        icon = "📁 ",
                        desc = " File Tree           ",
                        key = "e",
                        key_format = " %s", -- remove default surrounding `[]`
                    },
                    {
                        action = function()
                            vim.cmd("cd ~/.config/nvim") -- Change directory
                            require("fzf-lua").files()   -- Open fzf-lua file picker
                        end,
                        icon = "❓ ",
                        desc = " Find Dotfiles",
                        key = "d",
                        key_format = " %s", -- remove default surrounding `[]`
                    },
                },
                footer = {}, --your footer
            },
        })
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
