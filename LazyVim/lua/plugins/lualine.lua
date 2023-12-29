local function get_short_cwd()
  return vim.fn.fnamemodify(vim.fn.getcwd(), ":~"):sub(3)
end

local neo_tree = {
  sections = {
    lualine_a = {
      {
        function()
          return [[]]
        end,
      },
    },
    lualine_b = {
      {
        function()
          return [[  File Explorer]]
        end,
        color = { gui = "bold" },
      },
    },
    lualine_c = {
      {
        get_short_cwd,
        color = { gui = "bold" },
      },
    },
    lualine_z = {
      function()
        return " " .. os.date("%R")
      end,
    },
  },
  filetypes = { "neo-tree" },
}

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    options = {
      theme = "auto",
      icons_enabled = true,
      component_separators = "",
      section_separators = { left = "", right = "" },
      globalstatus = true,
      disabled_filetypes = { statusline = { "dashboard", "alpha" } },
    },
    sections = {
      lualine_a = {
        {
          "mode",
          icons_enabled = true,
          icon = " ",
        },
      },
    },
    extensions = { neo_tree, "lazy", "mason", "nvim-dap-ui", "trouble" },
  },
}
