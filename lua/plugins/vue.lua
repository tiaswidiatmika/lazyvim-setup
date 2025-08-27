return {
    -- Ensure Vue language server
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "vue-language-server",
                "html-lsp",
                "typescript-language-server",
            },
        },
    },

    -- Configure LSP
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                volar = {
                    filetypes = { "vue" },
                    init_options = {
                        vue = {
                            hybridMode = false,
                        },
                        typescript = {
                            tsdk = vim.fn.expand(
                                "~/.local/share/nvim/mason/packages/typescript-language-server/node_modules/typescript/lib"
                            ),
                        },
                    },
                },
                html = {
                    filetypes = { "html", "vue" },
                },
            },
        },
    },

    -- Ensure filetype detection
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = { "vue", "html", "css", "javascript", "typescript" },
        },
    },
}
