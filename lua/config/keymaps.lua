-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- This keymaps is to move lines up and down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")

-- This keypam is to run a macro to convert a typesctipt function into a arrow function
vim.keymap.set("n", "<leader>fa", "0/function<Enter>ciwconst<Esc>f(i = <Esc>f)a => <Esc>")

-- vim.api.nvim_del_keymap("n", "<C-/>")

vim.keymap.set("t", "<C-`>", function()
  require("toggleterm").toggle()
end, { desc = "Toggle floating terminal" })

vim.keymap.set("n", "<C-`>", function()
  require("toggleterm").toggle()
end, { desc = "Toggle floating terminal" })
