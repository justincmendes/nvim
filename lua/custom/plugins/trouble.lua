return {
  'folke/trouble.nvim',
  config = function()
    vim.keymap.set('n', '<leader>xx', '<cmd>TroubleToggle quickfix<cr>', { silent = true, noremap = true })
  end,
}
