return {
  "ThePrimeagen/harpoon",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("harpoon").setup()
  end,
  keys = {
    { "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<CR>", desc = "Harpoon file" },
    { "<leader>h", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", desc = "Harpoon menu" },
    { "<leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", desc = "1st file harpooned" },
    { "<leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", desc = "2nd file harpooned" },
    { "<leader>3", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", desc = "3rd file harpooned" },
    { "<leader>4", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", desc = "4th file harpooned" },
    { "<leader>5", "<cmd>lua require('harpoon.ui').nav_file(5)<CR>", desc = "5th file harpooned" },
  },
}
