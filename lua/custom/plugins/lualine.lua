return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local catppuccin = require 'catppuccin.utils.lualine' 'latte'
    catppuccin.normal.a.fg = catppuccin.normal.a.bg
    catppuccin.insert.a.fg = catppuccin.insert.a.bg
    catppuccin.visual.a.fg = catppuccin.visual.a.bg
    catppuccin.replace.a.fg = catppuccin.replace.a.bg
    catppuccin.command.a.fg = catppuccin.command.a.bg
    catppuccin.inactive.a.fg = catppuccin.inactive.a.bg
    require('lualine').setup {
      options = {
        theme = catppuccin,
      },
      sections = { lualine_c = { { 'filename', path = 1 } } },
    }
  end,
}
