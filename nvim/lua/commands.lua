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


-- vim.api.nvim_create_autocmd("VimEnter", {
--     pattern = "*",
--     command = "cd " .. vim.fn.expand("%:p:h")
-- })

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
        local bg_current = "#2c3e50"
        local bg_visible = "#1e2c39"
        local bg_inactive = "#1a242f"
        local fg_current = "#ECEFF4"
        local fg_visible = "#D8DEE9"
        local fg_inactive = "#8997a5"
        local mod_color = "#EBCB8B"
        local pin_color = "#B48EAD"
        local separator_color = "#88C0D0"

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
            -- fg = "#ECEFF4", -- Brighter white for text
            fg = "#EBCB8B", -- Yellow/amber color to indicate modification
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
            -- fg = "#D8DEE9", -- Slightly dimmed text
            bg = "#1e2c39", -- Slightly darker than current
            italic = true
        })

        -- Visible modified buffer sign
        vim.api.nvim_set_hl(0, "BufferVisibleModSign", {
            fg = "#EBCB8B", -- Same yellow/amber for consistency
            bg = "#1e2c39"  -- Match the buffer background
        })


        -- Diagnostic highlights for errors
        vim.api.nvim_set_hl(0, "BufferCurrentERROR", {
            fg = "#BF616A",
            bg = bg_current,
            bold = true
        })
        vim.api.nvim_set_hl(0, "BufferVisibleERROR", {
            fg = "#BF616A",
            bg = bg_visible
        })
        vim.api.nvim_set_hl(0, "BufferInactiveERROR", {
            fg = "#BF616A",
            bg = bg_inactive,
            sp = "#BF616A"
        })


        -- Diagnostic highlights for warnings
        vim.api.nvim_set_hl(0, "BufferCurrentWARN", {
            fg = "#BF616A",
            bg = bg_current,
            bold = true
        })
        vim.api.nvim_set_hl(0, "BufferVisibleERROR", {
            fg = "#BF616A",
            bg = bg_visible
        })
        vim.api.nvim_set_hl(0, "BufferInactiveERROR", {
            fg = "#BF616A",
            bg = bg_inactive,
            sp = "#BF616A"
        })
    end

    -- Uncomment to enable visible buffer styling
    -- vim.api.nvim_set_hl(0, "BufferVisible", { fg = "#adadad", bg = "#303030" })
})

-- vim.api.nvim_create_autocmd("ColorScheme", {
--     pattern = "*",
--     callback = function()
--         -- Base colors
--         local bg_current = "#2c3e50"
--         local bg_visible = "#1e2c39"
--         local bg_inactive = "#1a242f"
--         local fg_current = "#ECEFF4"
--         local fg_visible = "#D8DEE9"
--         local fg_inactive = "#8997a5"
--         local mod_color = "#EBCB8B"
--         local pin_color = "#B48EAD"
--         local separator_color = "#88C0D0"
--
--         -- Current buffer styling
--         vim.api.nvim_set_hl(0, "BufferCurrent", {
--             fg = fg_current,
--             bg = bg_current,
--             bold = true
--         })
--         vim.api.nvim_set_hl(0, "BufferCurrentSign", {
--             fg = separator_color,
--             bg = bg_current
--         })
--         vim.api.nvim_set_hl(0, "BufferCurrentMod", {
--             fg = fg_current,
--             bg = bg_current,
--             bold = true,
--             italic = true
--         })
--         vim.api.nvim_set_hl(0, "BufferCurrentModSign", {
--             fg = mod_color,
--             bg = bg_current
--         })
--         vim.api.nvim_set_hl(0, "BufferCurrentIndex", {
--             fg = separator_color,
--             bg = bg_current
--         })
--         vim.api.nvim_set_hl(0, "BufferCurrentTarget", {
--             fg = fg_current,
--             bg = bg_current,
--             bold = true
--         })
--         vim.api.nvim_set_hl(0, "BufferCurrentIcon", {
--             bg = bg_current
--         })
--
--         -- Visible buffer styling (when window is split)
--         vim.api.nvim_set_hl(0, "BufferVisible", {
--             fg = fg_visible,
--             bg = bg_visible
--         })
--         vim.api.nvim_set_hl(0, "BufferVisibleSign", {
--             fg = separator_color,
--             bg = bg_visible
--         })
--         vim.api.nvim_set_hl(0, "BufferVisibleMod", {
--             fg = fg_visible,
--             bg = bg_visible,
--             italic = true
--         })
--         vim.api.nvim_set_hl(0, "BufferVisibleModSign", {
--             fg = mod_color,
--             bg = bg_visible
--         })
--         vim.api.nvim_set_hl(0, "BufferVisibleIndex", {
--             fg = separator_color,
--             bg = bg_visible
--         })
--         vim.api.nvim_set_hl(0, "BufferVisibleTarget", {
--             fg = fg_visible,
--             bg = bg_visible,
--             bold = true
--         })
--         vim.api.nvim_set_hl(0, "BufferVisibleIcon", {
--             bg = bg_visible
--         })
--
--         -- Inactive buffer styling
--         vim.api.nvim_set_hl(0, "BufferInactive", {
--             fg = fg_inactive,
--             bg = bg_inactive
--         })
--         vim.api.nvim_set_hl(0, "BufferInactiveSign", {
--             fg = separator_color,
--             bg = bg_inactive
--         })
--         vim.api.nvim_set_hl(0, "BufferInactiveMod", {
--             fg = fg_inactive,
--             bg = bg_inactive,
--             italic = true
--         })
--         vim.api.nvim_set_hl(0, "BufferInactiveModSign", {
--             fg = mod_color,
--             bg = bg_inactive
--         })
--         vim.api.nvim_set_hl(0, "BufferInactiveIndex", {
--             fg = fg_inactive,
--             bg = bg_inactive
--         })
--         vim.api.nvim_set_hl(0, "BufferInactiveTarget", {
--             fg = fg_inactive,
--             bg = bg_inactive
--         })
--         vim.api.nvim_set_hl(0, "BufferInactiveIcon", {
--             bg = bg_inactive
--         })
--
--         -- Alternate buffer styling
--         vim.api.nvim_set_hl(0, "BufferAlternate", {
--             fg = fg_visible,
--             bg = bg_visible
--         })
--         vim.api.nvim_set_hl(0, "BufferAlternateSign", {
--             fg = separator_color,
--             bg = bg_visible
--         })
--         vim.api.nvim_set_hl(0, "BufferAlternateMod", {
--             fg = fg_visible,
--             bg = bg_visible,
--             italic = true
--         })
--         vim.api.nvim_set_hl(0, "BufferAlternateModSign", {
--             fg = mod_color,
--             bg = bg_visible
--         })
--         vim.api.nvim_set_hl(0, "BufferAlternateTarget", {
--             fg = fg_visible,
--             bg = bg_visible,
--             bold = true
--         })
--
--         -- Pinned buffer styling
--         vim.api.nvim_set_hl(0, "BufferCurrentPin", {
--             fg = pin_color,
--             bg = bg_current
--         })
--         vim.api.nvim_set_hl(0, "BufferVisiblePin", {
--             fg = pin_color,
--             bg = bg_visible
--         })
--         vim.api.nvim_set_hl(0, "BufferInactivePin", {
--             fg = pin_color,
--             bg = bg_inactive
--         })
--
--         -- Tab styling
--         vim.api.nvim_set_hl(0, "BufferTabpages", {
--             fg = separator_color,
--             bg = bg_inactive,
--             bold = true
--         })
--         vim.api.nvim_set_hl(0, "BufferTabpageFill", {
--             fg = fg_inactive,
--             bg = bg_inactive
--         })
--
--         -- Diagnostic highlights for errors
--         vim.api.nvim_set_hl(0, "BufferCurrentERROR", {
--             fg = "#BF616A",
--             bg = bg_current,
--             bold = true
--         })
--         vim.api.nvim_set_hl(0, "BufferVisibleERROR", {
--             fg = "#BF616A",
--             bg = bg_visible
--         })
--         vim.api.nvim_set_hl(0, "BufferInactiveERROR", {
--             fg = "#BF616A",
--             bg = bg_inactive,
--             sp = "#BF616A"
--         })
--     end
-- })
--
