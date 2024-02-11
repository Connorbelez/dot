local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require('null-ls')

local opts = {
  sources = {
    null_ls.builtins.formatting.black,
    null_ls.builtins.diagnostics.mypy,
    null_ls.builtins.diagnostics.ruff,
    null_ls.builtins.formatting.gofmt,
    -- null_ls.builtins.formatting.stylua,
    -- null_ls.builtins.formatting.prettier,
    -- null_ls.builtins.formatting.goimports,
    null_ls.builtins.completion.spell,
    null_ls.builtins.code_actions.eslint_d,
    -- null_ls.builtins.code_actions.impl,
    -- null_ls.builtins.code_actions.refactoring,
    -- null_ls.builtins.completion.spell,
    -- null_ls.builtins.completion.vsnip,
    -- null_ls.builtins.diagnostics.hadolint,
    -- null_ls.builtins.hover.dictionary

  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({
        group = augroup,
        buffer = bufnr,
      })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
}
return opts