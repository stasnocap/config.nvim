return {
  'tpope/vim-fugitive',
  config = function()
    vim.g.fugitive_no_maps = 1
    vim.keymap.set('n', '<leader>gs', vim.cmd.Git)

    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'fugitive',
      callback = function()
        vim.api.nvim_buf_set_keymap(0, 'n', 'n', 'h', { noremap = true, silent = true })
        vim.api.nvim_buf_set_keymap(0, 'n', 'u', 'k', { noremap = true, silent = true })
        vim.api.nvim_buf_set_keymap(0, 'n', 'e', 'j', { noremap = true, silent = true })
        vim.api.nvim_buf_set_keymap(0, 'n', 'i', 'l', { noremap = true, silent = true })
      end,
    })
  end,
}
