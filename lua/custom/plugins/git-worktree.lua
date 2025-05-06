return {
  'ThePrimeagen/git-worktree.nvim',
  config = function()
    local telescope = require('telescope')
    telescope.load_extension 'git_worktree'
    vim.keymap.set('n', '<leader>ws', telescope.extensions.git_worktree.git_worktrees)
    vim.keymap.set('n', '<leader>wa', telescope.extensions.git_worktree.create_git_worktree)
  end,
}
