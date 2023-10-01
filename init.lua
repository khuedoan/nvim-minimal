-- Options

vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.shiftwidth = 0
vim.o.tabstop = 4
vim.o.swapfile = false
vim.o.writebackup = false
vim.o.undofile = true

vim.g.mapleader = " "

-- Theme

vim.cmd("colorscheme habamax")

-- Plugins

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "https://github.com/junegunn/fzf.vim",
        dependencies = {
            "https://github.com/junegunn/fzf",
        },
        keys = {
            { "<LEADER><LEADER>", ":Files<CR>", desc = "Find files" },
            { "<LEADER>,", ":Buffers<CR>", desc = "Find buffers" },
        },
    },

    {
        "https://github.com/stevearc/oil.nvim",
        config = function()
            require("oil").setup()
        end,
        keys = {
            { "-", ":Oil<CR>", desc = "Browse files from here" },
        },
    },

    {
        "https://github.com/ggandor/leap.nvim",
        event = "VeryLazy",
        config = function()
            require("leap").add_default_mappings()
        end,
    },
})
