return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local neotree = require("neo-tree")

    --set keymaps
    local k = vim.keymap

    k.set("n", "<leader>ee", "<cmd>Neotree show<CR>")
    k.set("n", "<leader>ef", "<cmd>Neotree focus<CR>")
    k.set("n", "<leader>ec", "<cmd>Neotree Close<CR>")

    neotree.setup({
      filesystem = {
        hide_dotfiles = false,
        follow_current_file = {
          enabled = true, -- This will find and focus the file in the active buffer every time
          leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
        },
        use_libuv_file_watcher = true,  -- Use filesystem watcher to auto-refresh
      },
    })
  end,
}
