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

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        vim.api.nvim_set_hl(0, "BufferCurrent", {
            fg = "#ECEFF4", -- Brighter white for text
            bg = "#1c2e40", -- Same as buffer background
            bg = "#2c3e50", -- Same as buffer background
            bold = true
        })
        -- Fix the separator gap
        vim.api.nvim_set_hl(0, "BufferCurrentSign", {
            fg = "#88C0D0", -- Same as buffer background
            bg = "#2c3e50"  -- Same as buffer background
        })
        -- vim.api.nvim_set_hl(0, "BufferVisible", { fg = "#adadad", bg = "#303030" })
    end
})
