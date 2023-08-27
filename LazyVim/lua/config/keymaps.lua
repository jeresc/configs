-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Window Left" })
vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Window Right" })
vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Window Down" })
vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Window Up" })

vim.keymap.set("i", "<C-g>", function()
  return vim.fn["codeium#Accept"]()
end, { desc = "Codeuim Autocomplete", expr = true })

vim.keymap.set("n", "<C-n>", function()
  require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
end, { desc = "Toggle NeoTree" })

vim.keymap.set("n", "<C-e>", function()
  require("harpoon.ui").toggle_quick_menu()
end, { desc = "Harpoon menu" })

vim.keymap.set("n", "<leader>a", function()
  require("harpoon.mark").add_file()
end, { desc = "Harpoon file" })

vim.keymap.set("n", "<C-a>", function()
  require("harpoon.ui").nav_file(1)
end, { desc = "1st file harpooned" })

vim.keymap.set("n", "<C-d>", function()
  require("harpoon.ui").nav_file(2)
end, { desc = "2nd file harpooned" })

vim.keymap.set("n", "<C-j>", function()
  require("harpoon.ui").nav_file(3)
end, { desc = "3rd file harpooned" })

vim.keymap.set("n", "<C-l>", function()
  require("harpoon.ui").nav_file(4)
end, { desc = "4th file harpooned" })
