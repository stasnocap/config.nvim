return {
  'mbbill/undotree',
  config = function()
    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

    function _G.Maps()
      pcall(vim.api.nvim_buf_del_keymap, 0, 'n', 'u')
      vim.api.nvim_buf_set_keymap(0, 'n', 'z', '<Plug>UndotreeUndo', { noremap = false, silent = true })
      vim.api.nvim_buf_set_keymap(0, 'n', 'Z', '<Plug>UndotreeRedo', { noremap = false, silent = true })

      vim.keymap.set('n', '<C-W>n', '<C-w>h', { desc = 'Previous window' })
      vim.keymap.set('n', '<C-W>u', '<C-w>k', { desc = 'Window above' })
      vim.keymap.set('n', '<C-W>e', '<C-w>j', { desc = 'Window below' })
      vim.keymap.set('n', '<C-W>i', '<C-w>l', { desc = 'Next window' })
      vim.keymap.set('n', '<C-W>N', '<C-w>H', { desc = 'Move window left' })
      vim.keymap.set('n', '<C-W>U>', '<C-w>K', { desc = 'Move window up' })
      vim.keymap.set('n', '<C-W>E>', '<C-w>J', { desc = 'Move window down' })
      vim.keymap.set('n', '<C-W>I>', '<C-w>L', { desc = 'Move window right' })
    end

    vim.api.nvim_create_autocmd('BufEnter', {
      pattern = '*',
      callback = function()
        if vim.bo.filetype == 'undotree' then
          Maps()
        end
      end,
    })
  end,
}
