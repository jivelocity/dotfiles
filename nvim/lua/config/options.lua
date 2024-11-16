-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])
-- Set leader key
vim.g.leader = " "
vim.g.mapleader = " "

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.path:append("**")
vim.opt.wildignore:append({ "*/node_modules/*", "*/target/*", "*/.git/*", "*/.DS_Store" })
vim.g.lazyvim_picker = "telescope"
vim.splitbelow = true
vim.splitright = true
vim.splitkeep = true
