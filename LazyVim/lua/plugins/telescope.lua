return {
  "telescope.nvim",
  dependencies = {
    "theprimeagen/git-worktree.nvim",
    config = function()
      require("telescope").load_extension("git_worktree")
    end,
  },
}
