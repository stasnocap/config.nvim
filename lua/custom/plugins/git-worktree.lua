return {
  'polarmutex/git-worktree.nvim',
  version = '^2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local telescope = require 'telescope'
    telescope.load_extension 'git_worktree'
    vim.keymap.set('n', '<leader>ws', telescope.extensions.git_worktree.git_worktree)
    vim.keymap.set('n', '<leader>wa', telescope.extensions.git_worktree.create_git_worktree)
  end,
}
