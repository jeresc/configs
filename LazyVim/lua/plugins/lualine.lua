local function get_short_cwd()
  return vim.fn.fnamemodify(vim.fn.getcwd(), ":~"):sub(3)
end

local function get_venv(variable)
  local venv = os.getenv(variable)
  if venv ~= nil and string.find(venv, "/") then
    local orig_venv = venv
    for w in orig_venv:gmatch("([^/]+)") do
      venv = w
    end
    venv = string.format("%s", venv)
  end
  return venv
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
      lualine_y = {
        { "progress", separator = " ", padding = { left = 1, right = 0 } },
        { "location", padding = { left = 0, right = 1 } },
        {
          function()
            local venv = get_venv("VIRTUAL_ENV") or get_venv("CONDA_DEFAULT_ENV") or ""
            return " " .. venv
          end,
          cond = function()
            return vim.bo.filetype == "python"
          end,
          padding = { left = 0, right = 1 },
        },
      },
      lualine_z = {
        {
          function()
            return " " .. os.date("%R")
          end,
        },
      },
    },
    extensions = { neo_tree, "lazy", "mason", "nvim-dap-ui", "trouble" },
  },
}
