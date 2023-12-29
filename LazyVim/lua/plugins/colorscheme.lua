return {
  { "Shatur/neovim-ayu" },
  { "ellisonleao/gruvbox.nvim" },
  { "catppuccin/nvim", as = "catppuccin" },
  { "sainnhe/gruvbox-material" },
  { "folke/tokyonight.nvim" },
  {
    "navarasu/onedark.nvim",
    opts = {
      style = "darker",
    },
    config = function(_, opts)
      require("onedark").setup(opts)
    end,
  },
  -- { "olimorris/onedarkpro.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ayu",
    },
  },
}
