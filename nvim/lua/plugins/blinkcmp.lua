return {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',

    version = 'v1.*',

    opts = {
        keymap = {
            preset = 'default',

            ['<C-k>'] = { 'select_prev', 'fallback' },
            ['<C-j>'] = { 'select_next', 'fallback' },
            ['<Tab>'] = { 'select_and_accept' },
            ['<C-CR>'] = { 'select_and_accept' },
            ['<S-CR>'] = { 'select_and_accept' },
        },

        cmdline = {
            keymap = {
                preset = 'inherit',
            },
            completion = { menu = { auto_show = true } },
        },

        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = 'mono'
        },

        signature = { enabled = true },
    },
    -- require("blink.cmp").setup
}
