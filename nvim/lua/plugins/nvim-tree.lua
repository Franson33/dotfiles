return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local nvimtree = require("nvim-tree")

    --configure nvim-tree
    nvimtree.setup({
      view = {
        width = 60,
      }
    })

    --set keymaps
    local k = vim.keymap

    k.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>")
    k.set("n", "<leader>ef", "<cmd>NvimTreeFindFile<CR>")
    k.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>")
    k.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>")
  end,
}
