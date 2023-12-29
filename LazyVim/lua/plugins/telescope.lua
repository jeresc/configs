return {
  "telescope.nvim",
  dependencies = {
    { "theprimeagen/git-worktree.nvim" },
  },
  opts = function()
    require("telescope").load_extension("git_worktree")
  end,
}
