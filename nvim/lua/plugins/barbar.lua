return {
    "romgrk/barbar.nvim",
    dependencies = {
        "lewis6991/gitsigns.nvim",     -- OPTIONAL: for git status
        "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
    },
    init = function()
        vim.g.barbar_auto_setup = false

        local map = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }
        -- Magic buffer-picking mode
        map('n', '<C-b>', '<Cmd>BufferPick<CR>', opts)

        -- Move to previous/next
        map("n", "<S-h>", "<Cmd>BufferPrevious<CR>", opts)
        map("n", "<S-l>", "<Cmd>BufferNext<CR>", opts)

        -- Ce-order to previous/next
        map("n", "<C-,>", "<Cmd>BufferMovePrevious<CR>", opts)
        map("n", "<C-.>", "<Cmd>BufferMoveNext<CR>", opts)

        -- Goto buffer in position...
        map("n", "<C-1>", "<Cmd>BufferGoto 1<CR>", opts)
        map("n", "<C-2>", "<Cmd>BufferGoto 2<CR>", opts)
        map("n", "<C-3>", "<Cmd>BufferGoto 3<CR>", opts)
        map("n", "<C-4>", "<Cmd>BufferGoto 4<CR>", opts)
        map("n", "<C-5>", "<Cmd>BufferGoto 5<CR>", opts)
        map("n", "<C-6>", "<Cmd>BufferGoto 6<CR>", opts)
        map("n", "<C-7>", "<Cmd>BufferGoto 7<CR>", opts)
        map("n", "<C-8>", "<Cmd>BufferGoto 8<CR>", opts)
        map("n", "<C-9>", "<Cmd>BufferGoto 9<CR>", opts)
        map("n", "<C-0>", "<Cmd>BufferLast<CR>", opts)

        -- Pin/unpin buffer
        map("n", "<C-p>", "<Cmd>BufferPin<CR>", opts)

        -- Close buffer
        map("n", "<S-x>", "<Cmd>BufferClose<CR>", opts)
        map("n", "<C-X>", "<Cmd>BufferCloseAllButPinned<CR>", opts)
    end,
    opts = {
        -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
        -- animation = true,
        -- insert_at_start = true,
        -- …etc.
        auto_hide = 1,

        animation = false,


        icons = {
            -- Configure the base icons on the bufferline.
            -- Valid options to display the buffer index and -number are `true`, 'superscript' and 'subscript'
            buffer_index = false,
            buffer_number = false,
            -- Enables / disables diagnostic symbols
            diagnostics = {
                [vim.diagnostic.severity.ERROR] = { enabled = true },
                [vim.diagnostic.severity.WARN] = { enabled = true },
                [vim.diagnostic.severity.INFO] = { enabled = true },
                [vim.diagnostic.severity.HINT] = { enabled = true },
            },
            -- gitsigns = {
            --     added = { enabled = true, icon = '+' },
            --     changed = { enabled = true, icon = '~' },
            --     deleted = { enabled = true, icon = '-' },
            -- },
            filetype = {
                -- Sets the icon's highlight group.
                -- If false, will use nvim-web-devicons colors
                custom_colors = false,

                -- Requires `nvim-web-devicons` if `true`
                enabled = true,
            },
            separator = { left = '▎', right = '' },

            -- If true, add an additional separator at the end of the buffer list
            separator_at_end = true,

            -- Configure the icons on the bufferline when modified or pinned.
            -- Supports all the base icon options.
            modified = { button = '●' },
            pinned = { button = '', filename = true },

            -- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
            preset = 'default',

            -- Configure the icons on the bufferline based on the visibility of a buffer.
            -- Supports all the base icon options, plus `modified` and `pinned`.
            alternate = { filetype = { enabled = false } },
            current = { button = '' },
            inactive = { button = '' },
            visible = { modified = { buffer_number = false } },
        },
    },
    version = "^1.0.0", -- optional: only update when a new 1.x version is released
}
