return {
    {
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {},
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
        config = function()
            require('render-markdown').setup({

                file_types = { 'markdown', 'quarto' },
                render_modes = true,
                heading = {
                    backgrounds = { '' },
                    icons = { '<> ' },
                    -- border = true,
                    -- below = '‾',
                    -- above = '',
                },

                bullet = {
                    left_pad = 1,
                }


            })
        end
    },
    -- { "preservim/vim-markdown" },
    { "bullets-vim/bullets.vim" },
}
