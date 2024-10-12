-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.clipboard = "unnamedplus"
opt.list = true -- Show some invisible characters (tabs...
opt.number = true -- Print line number
opt.relativenumber = true -- Relative line numbers

-- set the following command using vim language: set listchars=eol:¬,space:·

opt.listchars = {
  eol = "¬", -- Character for end of line
  space = "·", -- Character for space
}
