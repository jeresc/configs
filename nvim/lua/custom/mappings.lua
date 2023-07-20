local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "Window Left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "Window Right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "Window Down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "Window Up" },
  }
}

M.easymotion = {
  n = {
    ["<Leader>s"] = {"<Plug>(easymotion-s2)", "easymotion s2"}
  }
}

M.neotest = {
  n = {
    ["<leader>tt"] = {function() require("neotest").run.run(vim.fn.expand("%")) end, "Run File" },
    ["<leader>tT"] = {function() require("neotest").run.run(vim.loop.cwd()) end, "Run All Test Files" },
    ["<leader>tr"] = {function() require("neotest").run.run() end, "Run Nearest" },
    ["<leader>ts"] = {function() require("neotest").summary.toggle() end, "Toggle Summary" },
    ["<leader>to"] = {function() require("neotest").output.open({ enter = true, auto_close = true }) end, "Show Output" },
    ["<leader>tO"] = {function() require("neotest").output_panel.toggle() end, "Toggle Output Panel" },
    ["<leader>tS"] = {function() require("neotest").run.stop() end, "Stop" },
  },
}

M.codeium = {
  i = {
    ['<C-g>'] = {function () return vim.fn['codeium#Accept']() end},
    ['<c-;>'] = {function() return vim.fn['codeium#CycleCompletions'](1) end},
    ['<c-,>'] = {function() return vim.fn['codeium#CycleCompletions'](-1) end},
    ['<c-x>'] = {function() return vim.fn['codeium#Clear']() end}
  }
}

return M
