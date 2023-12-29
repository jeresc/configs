return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    indent = {},
    sources = { "filesystem", "buffers", "git_status", "document_symbols" },
    open_files_do_not_replace_types = { "terminal", "Trouble", "qf", "Outline" },
    default_component_configs = {
      indent = {
        indent_size = 2,
        padding = 0,
      },
      icon = {
        folder_closed = "",
        folder_open = "",
        folder_empty = "",
        highlight = "NeoTreeFileIcon",
      },
    },
    window = {
      position = "right",
      width = "18%",
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
