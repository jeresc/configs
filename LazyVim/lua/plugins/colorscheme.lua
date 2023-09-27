return {
  { "Shatur/neovim-ayu" },
  { "ellisonleao/gruvbox.nvim" },
  { "safv12/andromeda.vim" },
  { "catppuccin/nvim", as = "catppuccin" },
  { "sainnhe/gruvbox-material" },
  {
    "navarasu/onedark.nvim",
    -- opts = {
    --   style = "darker",
    -- },
    -- config = function(_, opts)
    --   require("onedark").setup(opts)
    -- end,
  },
  -- { "olimorris/onedarkpro.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
