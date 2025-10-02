return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            yaml = { "yamlfmt" }, -- Your existing YAML config
            vue = { "prettier" }, -- Add Vue formatting
            html = { "prettier" }, -- Add HTML formatting
            css = { "prettier" }, -- Add CSS formatting
            scss = { "prettier" }, -- Add SCSS formatting
            javascript = { "prettier" }, -- Add JS formatting
            typescript = { "prettier" }, -- Add TS formatting
        },
        formatters = {
            yamlfmt = {
                command = "yamlfmt",
                args = { "-formatter", "basic", "-indentless_arrays=true" },
            },
        },
    },
}
