return {
  { "Shatur/neovim-ayu" },
  { "ellisonleao/gruvbox.nvim" },
  { "catppuccin/nvim", as = "catppuccin" },
  { "folke/tokyonight.nvim" },
  { "oxfist/night-owl.nvim" },
  {
    "jeresc/vesper.nvim",
    config = function()
      local mix = require("vesper.utils").mix
      local p = require("vesper.colors")

      require("vesper").setup({
        palette_overrides = {
          fg = mix("#FFFFFF", "#000000", math.abs(0.90)),
          primary = mix("#FFFFFF", "#000000", math.abs(0.90)),
          purple = "#FBADFF",
        },
        overrides = {
          Keyword = { fg = p.purple },
          Operator = { fg = p.purple },
          ["@punctuation.separator.keyvalue"] = { fg = p.purple },

          -- tsx
          ["@import.identifier.tsx"] = { fg = p.fg },

          -- typescript
          ["@import.identifier.typescript"] = { fg = p.fg },
        },
      })
    end,
  },
  {
    "ellisonleao/gruvbox.nvim", -- theme
    config = function()
      require("gruvbox").setup({
        contrast = "hard",
        palette_overrides = { dark0_hard = "#0E1018" },
        overrides = {
          --       -- Comment = {fg = "#626A73", italic = true, bold = true},
          --       -- #736B62,  #626273, #627273
          Comment = { fg = "#81878f", italic = true, bold = true },
          Define = { link = "GruvboxPurple" },
          Macro = { link = "GruvboxPurple" },
          --       ["@constant.builtin"] = { link = "GruvboxPurple" },
          --       ["@storageclass.lifetime"] = { link = "GruvboxAqua" },
          --       ["@text.note"] = { link = "TODO" },
          --       ["@namespace.latex"] = { link = "Include" },
          --       ["@namespace.rust"] = { link = "Include" },
          --       ContextVt = { fg = "#878788" },
          --       CopilotSuggestion = { fg = "#878787" },
          --       CocCodeLens = { fg = "#878787" },
          --       CocWarningFloat = { fg = "#dfaf87" },
          --       CocInlayHint = { fg = "#ABB0B6" },
          --       CocPumShortcut = { fg = "#fe8019" },
          --       CocPumDetail = { fg = "#fe8019" },
          --       DiagnosticVirtualTextWarn = { fg = "#dfaf87" },
          --       -- fold
          Folded = { fg = "#fe8019", bg = "#3c3836", italic = true },
          FoldColumn = { fg = "#fe8019", bg = "#0E1018" },
          SignColumn = { bg = "#fe8019" },
          --       -- new git colors
          DiffAdd = { bold = true, reverse = false, fg = "", bg = "#2a4333" },
          DiffChange = { bold = true, reverse = false, fg = "", bg = "#333841" },
          DiffDelete = { bold = true, reverse = false, fg = "#442d30", bg = "#442d30" },
          DiffText = { bold = true, reverse = false, fg = "", bg = "#213352" },
          --       -- statusline
          StatusLine = { bg = "#ffffff", fg = "#0E1018" },
          StatusLineNC = { bg = "#3c3836", fg = "#0E1018" },
          CursorLineNr = { fg = "#fabd2f", bg = "" },
          GruvboxOrangeSign = { fg = "#dfaf87", bg = "" },
          GruvboxAquaSign = { fg = "#8EC07C", bg = "" },
          GruvboxGreenSign = { fg = "#b8bb26", bg = "" },
          GruvboxRedSign = { fg = "#fb4934", bg = "" },
          GruvboxBlueSign = { fg = "#83a598", bg = "" },
          WilderMenu = { fg = "#ebdbb2", bg = "" },
          WilderAccent = { fg = "#f4468f", bg = "" },
          --       -- coc semantic token
          --       CocSemStruct = { link = "GruvboxYellow" },
          --       CocSemKeyword = { fg = "", bg = "#0E1018" },
          --       CocSemEnumMember = { fg = "", bg = "#0E1018" },
          --       CocSemTypeParameter = { fg = "", bg = "#0E1018" },
          --       CocSemComment = { fg = "", bg = "#0E1018" },
          --       CocSemMacro = { fg = "", bg = "#0E1018" },
          --       CocSemVariable = { fg = "", bg = "#0E1018" },
          --       -- CocSemFunction = {link = "GruvboxGreen"},
          --       -- neorg
          --       ["@neorg.markup.inline_macro"] = { link = "GruvboxGreen" },
        },
      })
      --   vim.cmd.colorscheme("gruvbox")
    end,
  },
  { "olivercederborg/poimandres.nvim" },
  -- {
  --   "navarasu/onedark.nvim",
  --   opts = {
  --     style = "darker",
  --   },
  --   config = function(_, opts)
  --     require("onedark").setup(opts)
  --   end,
  -- },
  -- { "drewtempelmeyer/palenight.vim" },
  -- { "olimorris/onedarkpro.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vesper",
    },
  },
}
