return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    formatters_by_ft = {
      lua = { 'stylua' },
      cs = { 'csharpier_fixed' },
      javascript = { 'js_beautify' },
      html = { 'html_beautify' },
      css = { 'css_beautify' },
      scss = { 'css_beautify' },
      json = { 'json_beautify' },
    },
    formatters = {
      json_beautify = {
        command = 'js-beautify',
        args = { '--file', '-', '-s', '2' },
      },
      csharpier_fixed = {
        meta = {
          url = 'https://github.com/belav/csharpier',
          description = 'The opinionated C# code formatter.',
        },
        command = 'csharpier',
        args = { 'format' },
        stdin = true,
      },
    },
  },
}
