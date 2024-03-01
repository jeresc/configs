return {
  { "Shatur/neovim-ayu" },
  { "ellisonleao/gruvbox.nvim" },
  { "catppuccin/nvim", as = "catppuccin" },
  { "folke/tokyonight.nvim" },
  { "oxfist/night-owl.nvim" },
  {
    "datsfilipe/vesper.nvim",
  },
  { "olivercederborg/poimandres.nvim" },
  -- { "rose-pine/neovim", name = "rose-pine" },
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
      colorscheme = "vesper",
    },
  },
}
