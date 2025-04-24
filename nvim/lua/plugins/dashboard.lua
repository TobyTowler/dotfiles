-- return {
--     "nvimdev/dashboard-nvim",
--     event = "VimEnter",
--     config = function()
--         require("dashboard").setup({
--             theme = "doom",
--             config = {
--                 header = {
--                     "",
--                     "",
--                     "",
--                     "",
--                     "",
--                     "",
--                     "",
--                     "",
--                     "",
--                     "",
--                     "",
--                     " ██████╗ ██╗   ██╗███████╗███████╗██╗ ██████╗ ",
--                     " ██╔══██╗██║   ██║██╔════╝██╔════╝██║██╔═══██╗",
--                     " ██████╔╝██║   ██║███████╗███████╗██║██║   ██║",
--                     " ██╔═══╝ ██║   ██║╚════██║╚════██║██║██║   ██║",
--                     " ██║     ╚██████╔╝███████║███████║██║╚██████╔╝",
--                     "╚═╝      ╚═════╝ ╚══════╝╚══════╝╚═╝ ╚═════╝",
--                     "",
--                     "",
--                     "",
--                     "",
--                     "",
--                     "",
--                     "",
--                     "",
--                     "",
--                     "",
--                     "",
--                     "",
--                     "",
--                     "",
--                     "",
--                     "",
--                 }, --your header,
--                 center = {
--                     {
--                         action = "ene | startinsert",
--                         desc = " New File",
--                         icon = "📄 ",
--                         key = "n",
--                         key_format = " %s", -- remove default surrounding `[]`
--                     },
--                     {
--                         action = "FzfLua files",
--                         icon = "🔎 ",
--                         desc = " Find File           ",
--                         key = "f",
--                         key_format = " %s", -- remove default surrounding `[]`
--                     },
--                     {
--                         action = ":Oil./<Cr>",
--                         icon = "📁 ",
--                         desc = " File Tree           ",
--                         key = "e",
--                         key_format = " %s", -- remove default surrounding `[]`
--                     },
--                     {
--                         action = function()
--                             vim.cmd("cd ~/.config/nvim") -- Change directory
--                             require("fzf-lua").files()   -- Open fzf-lua file picker
--                         end,
--                         icon = "❓ ",
--                         desc = " Find Dotfiles",
--                         key = "d",
--                         key_format = " %s", -- remove default surrounding `[]`
--                     },
--                 },
--                 footer = {}, --your footer
--             },
--         })
--     end,
--     dependencies = { { "nvim-tree/nvim-web-devicons" } },
-- }






return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- Set header
        dashboard.section.header.val = {
            "",
            -- "",
            -- "",
            -- "",
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
            " ╚═╝      ╚═════╝ ╚══════╝╚══════╝╚═╝ ╚═════╝",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            -- "",
            -- "",
            -- "",
            -- "",
            -- "",
            -- "",
            "",
            "",
        }

        -- Set menu
        dashboard.section.buttons.val = {
            -- dashboard.button("n", "📄  New File", ":ene | startinsert<CR>"),
            dashboard.button("f", "🔎  Find File", ":FzfLua files<CR>"),
            dashboard.button("g", "📝  Find Word", ":FzfLua grep_project<CR>"),
            dashboard.button("e", "📁  File Tree", ":Oil./<CR>"),
            dashboard.button("d", "🛠️  Find Dotfiles", function()
                vim.cmd("cd ~/.config/nvim") -- Change directory
                require("fzf-lua").files()   -- Open fzf-lua file picker
            end),
        }


        dashboard.section.footer.val = {
            "",
            "",
            "\"Software and cathedrals are much the same",
            "  – first we build them, then we pray.\"",
            "",
            "                             — Sam Redwine",
            "",
        }

        dashboard.section.footer.val = {



            "",
            "",
            "\"If at first you don't succeed, call it version 1.0.\""
        }

        -- Send config to alpha
        alpha.setup(dashboard.opts)

        -- Disable folding on alpha buffer
        vim.cmd([[
            autocmd FileType alpha setlocal nofoldenable
        ]])
    end,
}
