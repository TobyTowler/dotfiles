return {
    {
        'saghen/blink.cmp',
        dependencies = 'rafamadriz/friendly-snippets',

        version = 'v0.*',

        opts = {
            keymap = {
                preset = 'default',

                ['<C-k>'] = { 'select_prev', 'fallback' },
                ['<C-j>'] = { 'select_next', 'fallback' },
                ['<Tab>'] = { 'select_and_accept' },
                ['<C-CR>'] = { 'select_and_accept' },
                ['<S-CR>'] = { 'select_and_accept' },
            },

            appearance = {
                use_nvim_cmp_as_default = true,
                nerd_font_variant = 'mono'
            },

            signature = { enabled = true }
        },
        -- require("blink.cmp").setup
    },
}
