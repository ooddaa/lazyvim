-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "k", "10k")
map("n", "l", "10j")
map("v", "L", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Rebind Grep from <leader>/ to <leader>fw
-- We'll use the same function that's assigned to <leader>sg since that's a grep function too
map("n", "<leader>fw", "<leader>sg", { remap = true, desc = "Grep (Root Dir)" })

-- Add mapping to close current buffer with <leader>z
map("n", "<leader>z", function()
  vim.cmd("bdelete")
end, { desc = "Close current buffer" })

-- Normal mode comment toggle
-- This maps <leader>/ to the same functionality as the gc operator
map("n", "<leader>/", "gcc", { remap = true, desc = "Toggle comment line" })

-- Visual mode comment toggle
-- This maps <leader>/ to the same functionality as the gc operator in visual mode
map("v", "<leader>/", "gc", { remap = true, desc = "Toggle comment selection" })
