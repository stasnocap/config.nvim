return {
  'rest-nvim/rest.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, 'http')
    end,
    config = function()
      pcall(require('telescope').load_extension, 'rest')
      vim.keymap.set('n', '<leader>he', require('telescope').extensions.rest.select_env)
      vim.keymap.set('n', 'hr', ':Rest run<CR>', { noremap = true, silent = true })
      vim.keymap.set('n', 'hl', ':Rest logs<CR>', { noremap = true, silent = true })
    end,
  },
}
