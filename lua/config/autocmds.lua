-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
-- lua/config/autocmds.lua
local api = vim.api

api.nvim_create_autocmd("FileType", {
    pattern = "php",
    callback = function()
        vim.bo.expandtab = true -- Use spaces instead of tabs
        vim.bo.shiftwidth = 4 -- Size of an indent
        vim.bo.softtabstop = 4 -- Number of spaces for a <Tab>
        vim.bo.tabstop = 4 -- Number of spaces a <Tab> in the file counts for
    end,
})

-- to add more autocommands, just create a new api.nvim_create_autocmd like example above
