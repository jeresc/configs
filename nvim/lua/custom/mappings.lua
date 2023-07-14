local M = {}

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

return M
