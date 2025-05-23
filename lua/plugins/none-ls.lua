return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.sql_formatter,
        -- null_ls.builtins.diagnostics.eslint,
        -- null_ls.builtins.diagnostics.golangci_lint,
      },
    })
  end,
}
