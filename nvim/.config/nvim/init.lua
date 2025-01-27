-- Basic settings
vim.opt.number = true                -- Line numbers
vim.opt.tabstop = 4                  -- Tab width
vim.opt.shiftwidth = 4               -- Indentation
vim.opt.expandtab = true             -- Use spaces instead of tabs
vim.opt.smartindent = true           -- Autoindent
vim.opt.termguicolors = true         -- Enable 24-bit colors
vim.opt.cursorline = true            -- Highlight the current line
vim.opt.wrap = false                 -- Disable line wrapping
vim.opt.clipboard = "unnamedplus"    -- Use system clipboard


vim.g.mapleader = " "    -- Set leader key to space
vim.g.maplocalleader = " "  -- Optional: Set the local leader key to space

-- Keybindings
vim.keymap.set("n", "<leader>ev", ":e ~/.config/nvim/init.lua<CR>")
vim.keymap.set("n", "<leader>sv", ":source ~/.config/nvim/init.lua<CR>")

-- Plugin manager: lazy.nvim
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

-- Plugins
require("lazy").setup({
    "sainnhe/everforest",       -- Everforest theme
    "morhetz/gruvbox",          -- Gruvbox theme
    "nvim-lualine/lualine.nvim",     -- Statusline
    "nvim-treesitter/nvim-treesitter", -- Better syntax highlighting
    "folke/tokyonight.nvim",         -- Tokyonight theme
    "nvim-tree/nvim-tree.lua",       -- File explorer
    "nvim-telescope/telescope.nvim", -- Fuzzy finder
})
-- Theme setup
vim.cmd("colorscheme everforest")  -- Set Everforest as the default theme
vim.g.everforest_background = "medium"  -- Choose background contrast (soft, medium, hard)
vim.g.gruvbox_contrast_dark = "hard"   -- Optional: Gruvbox contrast for dark mode

-- Toggle themes with a keybinding
vim.keymap.set("n", "<leader>te", function() vim.cmd("colorscheme everforest") end, { desc = "Everforest Theme" })
vim.keymap.set("n", "<leader>tg", function() vim.cmd("colorscheme gruvbox") end, { desc = "Gruvbox Theme" })

-- toggle line wrap
vim.api.nvim_set_keymap('n', '<leader>w', ':set wrap!<CR>', { noremap = true, silent = true })


