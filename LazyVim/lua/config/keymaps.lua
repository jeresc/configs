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

vim.keymap.set("n", "<leader>gw", function()
  require("telescope").extensions.git_worktree.git_worktrees()
end, { desc = "Switch or Delete Git Worktrees" })

vim.keymap.set("n", "<leader>ga", function()
  require("telescope").extensions.git_worktree.create_git_worktree()
end, { desc = "Create Git Worktree" })

vim.keymap.set("n", "<leader>h", function()
  require("twilight").toggle()
end, { desc = "Toggle Twilight" })

vim.keymap.set("n", "<leader>md", "<cmd> MarkdownPreviewToggle<CR>", { desc = "Toggle Markdown Preview" })

vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without yank" })

vim.keymap.set("n", "zR", function()
  require("ufo").openAllFolds()
end, { desc = "Open all folds" })

vim.keymap.set("n", "zM", function()
  require("ufo").closeAllFolds()
end, { desc = "Close all folds" })

-- vim.keymap.set("n", "K", function()
--   local winid = require("ufo").peekFoldedLinesUnderCursor()
--   if not winid then
--     vim.lsp.buf.hover()
--   end
-- end)

vim.keymap.set("n", "<space>gb", function()
  require("gitsigns").toggle_current_line_blame()
end, { desc = "Toggle current line blame" })

vim.keymap.set("n", "<M-C-n>", "<cmd>Scratch<cr>", { desc = "Scratch" })
vim.keymap.set("n", "<M-C-o>", "<cmd>ScratchOpen<cr>", { desc = "Scratch Open" })
