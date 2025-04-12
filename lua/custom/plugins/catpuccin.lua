return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  opts = { styles = { comments = { 'bold' } } },
  config = function(_, _)
    vim.cmd.colorscheme 'catppuccin-latte'
  end,
}

