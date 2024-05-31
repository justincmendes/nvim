return {
  'nvim-treesitter/nvim-treesitter-context',
  config = function()
    vim.keymap.set('n', '[t', function()
      require('treesitter-context').go_to_context(vim.v.count1)
    end, { silent = true, desc = 'Move to Upper, [, [T]reesitter Context' })
    vim.keymap.set('n', '<leader>ct', function()
      local tsc = require 'treesitter-context'
      tsc.toggle()
    end, { silent = true, desc = 'Treesitter [C]ontext [T]oggle' })
  end,
}
