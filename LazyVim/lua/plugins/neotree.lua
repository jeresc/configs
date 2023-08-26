return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    sources = { "filesystem", "buffers", "git_status", "document_symbols" },
    open_files_do_not_replace_types = { "terminal", "Trouble", "qf", "Outline" },
    default_component_configs = {
      icon = {
        folder_closed = "",
        folder_open = "",
        highlight = "NeoTreeFileIcon",
      },
    },
    window = {
      position = "right",
    },
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          "node_modules",
        },
      },
    },
  },
  -- config = function(_, opts)
  --   require("neo-tree").setup(opts)
  -- end,
}
