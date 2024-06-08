return {
  'nvimtools/none-ls.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvimtools/none-ls-extras.nvim',
  },
  config = function()
    -- -- Null-Ls Auto Formatting
    -- -- IMPORTANT!
    -- local augroup = vim.api.nvim_create_augroup('NoneLsFormatting', {})
    --
    -- local on_attach = function(client, bufnr)
    --   if client.supports_method 'textDocument/formatting' then
    --     vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
    --     vim.api.nvim_create_autocmd('BufWritePre', {
    --       group = augroup,
    --       buffer = bufnr,
    --       callback = function()
    --         vim.lsp.buf.format { bufnr = bufnr }
    --       end,
    --     })
    --   end
    -- end

    local null_ls = require 'null-ls'
    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        require 'none-ls.diagnostics.eslint',
        require 'none-ls.code_actions.eslint',
      },
      on_attach = on_attach,
    }
  end,
}
