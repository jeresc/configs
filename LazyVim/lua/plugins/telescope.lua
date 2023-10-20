return {
  "telescope.nvim",
  dependencies = {
    "theprimeagen/git-worktree.nvim",
    "nvim-telescope/telescope-media-files.nvim",
  },
  config = function()
    require("telescope").load_extension("git_worktree")
    require("telescope").load_extension("media_files")
  end,
}
