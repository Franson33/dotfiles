return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "lua", "heex", "javascript", "html", "json", "markdown", "typescript", "tsx", "kotlin" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
          autotag = { enable = true },
        })
    end
 }
