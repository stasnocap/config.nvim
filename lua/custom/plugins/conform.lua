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
      cs = { 'csharpier' },
      javascript = { 'js_beautify' },
      html = { 'html_beautify' },
      css = { 'css_beautify' },
      scss = { 'css_beautify' },
      json = { 'jq' },
    },
  },
}

