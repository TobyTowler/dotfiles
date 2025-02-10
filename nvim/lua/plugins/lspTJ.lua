return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        'saghen/blink.cmp',
        {
            "folke/lazydev.nvim",
            opts = {
                library = {
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        },
    },
    config = function()
        require("mason").setup()

        local capabilities = require('blink.cmp').get_lsp_capabilities()
        require("mason-lspconfig").setup({
            handlers = {
                function(server_name) -- default handler (optional)
                    require("lspconfig")[server_name].setup({
                        capabilities = capabilities,
                    })
                end,

                ["lua_ls"] = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup({
                        capabilities = capabilities,
                        settings = {
                            Lua = {
                                runtime = { version = "Lua 5.1" },
                                diagnostics = {
                                    globals = { "vim", "it", "describe", "before_each", "after_each" },
                                },
                            },
                        },
                    })
                end,
            },
        })


        opts = {
            autoformat = true,
        }


        require("lspconfig").lua_ls.setup { capabilites = capabilities }

        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function(args)
                local c = vim.lsp.get_client_by_id(args.data.client_id)
                if not c then return end

                if vim.bo.filetype == "lua" then
                    -- Format the current buffer on save
                    vim.api.nvim_create_autocmd('BufWritePre', {
                        buffer = args.buf,
                        callback = function()
                            vim.lsp.buf.format({ bufnr = args.buf, id = c.id })
                        end,
                    })
                end
            end,
        })


        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
        vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
        vim.keymap.set("n", "K", function()
            vim.lsp.buf.hover()
        end)
        vim.keymap.set("n", "[d", function()
            vim.diagnostic.goto_next()
        end)
        vim.keymap.set("n", "]d", function()
            vim.diagnostic.goto_prev()
        end)
    end,
}
