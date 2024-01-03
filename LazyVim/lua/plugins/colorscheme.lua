return {
  { "Shatur/neovim-ayu" },
  { "ellisonleao/gruvbox.nvim" },
  { "catppuccin/nvim", as = "catppuccin" },
  { "folke/tokyonight.nvim" },
  { "oxfist/night-owl.nvim" },
  {
    "navarasu/onedark.nvim",
    opts = {
      style = "darker",
    },
    config = function(_, opts)
      require("onedark").setup(opts)
    end,
  },
  -- { "drewtempelmeyer/palenight.vim" },
  -- { "olimorris/onedarkpro.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "night-owl",
    },
  },
}
