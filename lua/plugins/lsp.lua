-- lua/plugins/lsp.lua
return {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")
        -- ... other lspconfig setups

        -- Explicitly set up tailwindcss for common filetypes
        lspconfig.tailwindcss.setup({
            -- You might not need on_attach and capabilities if you set them up globally
            -- on_attach = your_on_attach_function,
            -- capabilities = your_capabilities,
            filetypes = {
                "html",
                "javascript",
                "typescript",
                "javascriptreact",
                "typescriptreact",
                "vue",
                "svelte",
                "astro",
                "css",
            },
        })
    end,
}
