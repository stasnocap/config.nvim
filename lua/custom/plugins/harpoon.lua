return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  commit = 'e76cb03c420bb74a5900a5b3e1dde776156af45f',
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end)
    vim.keymap.set('n', '<M-Up>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)
    vim.keymap.set('n', '<C-n>', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<C-e>', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<C-i>', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<C-l>', function()
      harpoon:list():select(4)
    end)
    vim.keymap.set('n', '<C-u>', function()
      harpoon:list():select(5)
    end)
    vim.keymap.set('n', '<C-y>', function()
      harpoon:list():select(6)
    end)
  end,
}
