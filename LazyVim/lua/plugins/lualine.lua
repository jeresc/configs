-- return {
--   "nvim-lualine/lualine.nvim",
--   event = "VeryLazy",
--   opts = {
--     options = {
--       globalstatus = 3,
--     },
--   },
-- }

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    options = {
      theme = "auto",
      icons_enabled = true,
      component_separators = "|",
      section_separators = "",
      globalstatus = false,
      disabled_filetypes = { statusline = { "dashboard", "alpha" } },
    },
  },
}

--   opts = function()
--     return {
--
--       },
--       sections = {
--         lualine_x = {
--           {
--             require("noice").api.statusline.mode.get,
--             cond = require("noice").api.statusline.mode.has,
--             color = { fg = "#ff9e64" },
--           },
--         },
--         lualine_a = {
--           {
--             "buffers",
--           },
--         },
--       },
--     }
--   end,
-- }
