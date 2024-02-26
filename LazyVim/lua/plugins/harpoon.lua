return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup()

    vim.keymap.set("n", "<leader>a", function()
      harpoon:list():append()
    end, { desc = "Harpoon file" })

    vim.keymap.set("n", "<C-e>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "Harpoon menu" })

    vim.keymap.set("n", "<C-a>", function()
      harpoon:list():select(1)
    end, { desc = "1st file harpooned" })

    vim.keymap.set("n", "<C-d>", function()
      harpoon:list():select(2)
    end, { desc = "2nd file harpooned" })

    vim.keymap.set("n", "<C-u>", function()
      harpoon:list():select(3)
    end, { desc = "3rd file harpooned" })

    vim.keymap.set("n", "<C-p>", function()
      harpoon:list():select(4)
    end, { desc = "4th file harpooned" })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<C-S-P>", function()
      harpoon:list():prev()
    end)
    vim.keymap.set("n", "<C-S-N>", function()
      harpoon:list():next()
    end)
  end,
}
