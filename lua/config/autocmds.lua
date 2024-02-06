-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Create an autocommand group named "AutoSaveOnFocusLost"
local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- Add an autocommand to save all buffers when focus is lost
vim.api.nvim_create_autocmd("FocusLost", {
  group = augroup("AutoSaveOnFocusLost"),
  callback = function()
    vim.cmd("wa") -- wa stands for 'write all'
  end,
  pattern = "*",
})

-- Add an autocommand to save all buffers when focus is lost
vim.api.nvim_create_autocmd("FocusGained", {
  group = augroup("AutoSaveOnFocusGained"),
  callback = function()
    vim.cmd("wa") -- wa stands for 'write all'
  end,
  pattern = "*",
})
