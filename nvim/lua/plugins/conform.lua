return {
  'stevearc/conform.nvim',
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      -- Customize or remove this keymap to your liking
      "<leader>f",
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
  opts = {
    -- Set to true to ignore errors
    ignore_errors = false,
    -- Define your formatters
    formatters_by_ft = {
      lua = { "stylua" },
      sh = { "shfmt" },
      javascript = { { "prettierd", "prettier" } },
      javascriptreact = { { "prettierd", "prettier" } },
      typescript = { { "prettierd", "prettier" } },
      typescriptreact = { { "prettierd", "prettier" } },
      markdown = { { "prettierd", "prettier" } },
      ["markdown.mdx"] = { { "prettierd", "prettier" } },
      vue = { { "prettierd", "prettier" } },
      css = { { "prettierd", "prettier" } },
      scss = { { "prettierd", "prettier" } },
      less = { { "prettierd", "prettier" } },
      html = { { "prettierd", "prettier" } },
      json = { { "prettierd", "prettier" } },
      jsonc = { { "prettierd", "prettier" } },
      yaml = { { "prettierd", "prettier" } },
      graphql = { { "prettierd", "prettier" } },
    },
    -- Set up format-on-save
    format_on_save = { timeout_ms = 500, lsp_fallback = true },
    ft_parsers = {
      javascript = "babel",
      javascriptreact = "babel",
      typescript = "typescript",
      typescriptreact = "typescript",
      vue = "vue",
      css = "css",
      scss = "scss",
      less = "less",
      html = "html",
      json = "json",
      jsonc = "json",
      yaml = "yaml",
      markdown = "markdown",
      ["markdown.mdx"] = "mdx",
      graphql = "graphql",
      handlebars = "glimmer",
    }
  }
}
