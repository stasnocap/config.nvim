return {
  'xiyaowong/transparent.nvim',
  config = function()
    local transparent = require 'transparent'
    transparent.setup {
      extra_groups = {
        'NormalFloat',
        'FloatBorder',
        'TelescopeTitle',
      },
    }
    transparent.clear_prefix 'lualine'
  end,
}
