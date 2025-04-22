-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- resize splits if window got resized
vim.api.nvim_create_autocmd({ "VimResized" }, {
    callback = function()
        local current_tab = vim.fn.tabpagenr()
        vim.cmd("tabdo wincmd =")
        vim.cmd("tabnext " .. current_tab)
    end,
})


vim.api.nvim_create_autocmd("VimEnter", {
    pattern = "*",
    command = "cd " .. vim.fn.expand("%:p:h")
})

-- vim.api.nvim_create_autocmd("ColorScheme", {
--     pattern = "*",
--     callback = function()
--         vim.api.nvim_set_hl(0, "BufferCurrent", {
--             fg = "#ECEFF4", -- Brighter white for text
--             bg = "#2c3e50", -- Same as buffer background
--             bold = true
--         })
--         -- Fix the separator gap
--         vim.api.nvim_set_hl(0, "BufferCurrentSign", {
--             fg = "#88C0D0", -- Same as buffer background
--             bg = "#2c3e50"  -- Same as buffer background
--         })
--         -- vim.api.nvim_set_hl(0, "BufferVisible", { fg = "#adadad", bg = "#303030" })
--     end
-- })

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        -- Current buffer styling
        vim.api.nvim_set_hl(0, "BufferCurrent", {
            fg = "#ECEFF4", -- Brighter white for text
            bg = "#2c3e50", -- Same as buffer background
            bold = true
        })

        -- Fix the separator gap
        vim.api.nvim_set_hl(0, "BufferCurrentSign", {
            fg = "#88C0D0", -- Same as buffer background
            bg = "#2c3e50"  -- Same as buffer background
        })

        -- Modified buffer styling
        vim.api.nvim_set_hl(0, "BufferCurrentMod", {
            fg = "#ECEFF4", -- Brighter white for text
            bg = "#2c3e50", -- Same as buffer background
            bold = true,
            italic = true
        })

        -- Modified buffer sign styling
        vim.api.nvim_set_hl(0, "BufferCurrentModSign", {
            fg = "#EBCB8B", -- Yellow/amber color to indicate modification
            bg = "#2c3e50"  -- Same as buffer background
        })

        -- Visible but not current modified buffer
        vim.api.nvim_set_hl(0, "BufferVisibleMod", {
            fg = "#D8DEE9", -- Slightly dimmed text
            bg = "#1e2c39", -- Slightly darker than current
            italic = true
        })

        -- Visible modified buffer sign
        vim.api.nvim_set_hl(0, "BufferVisibleModSign", {
            fg = "#EBCB8B", -- Same yellow/amber for consistency
            bg = "#1e2c39"  -- Match the buffer background
        })

        -- Uncomment to enable visible buffer styling
        -- vim.api.nvim_set_hl(0, "BufferVisible", { fg = "#adadad", bg = "#303030" })
    end
})
