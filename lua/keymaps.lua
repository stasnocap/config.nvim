vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('x', '<leader>v', '"_dp')

-- Up/down/left/right
vim.keymap.set({ 'n', 'o', 'x' }, 'n', 'h', { desc = 'Left (h)' })
vim.keymap.set({ 'n', 'o', 'x' }, 'u', 'k', { desc = 'Up (k)' })
vim.keymap.set({ 'n', 'o', 'x' }, 'e', 'j', { desc = 'Down (j)' })
vim.keymap.set({ 'n', 'o', 'x' }, 'i', 'l', { desc = 'Right (l)' })

-- Beginning/end of line
vim.keymap.set({ 'n', 'o', 'x' }, '<Home>', '^', { desc = 'First non-blank character' })
vim.keymap.set({ 'n', 'o', 'x' }, '<End>', '$', { desc = 'End of line' })

-- Word left/right
vim.keymap.set({ 'n', 'o', 'x' }, 'l', 'b', { desc = 'Word back' })
vim.keymap.set({ 'n', 'o', 'x' }, 'y', 'w', { desc = 'Word forward' })
vim.keymap.set({ 'n', 'o', 'v' }, '<M-l>', 'B', { desc = 'WORD back' })
vim.keymap.set({ 'n', 'o', 'v' }, '<M-y>', 'W', { desc = 'WORD forward' })

-- End of word left/right
vim.keymap.set({ 'n', 'o', 'x' }, 'N', 'ge', { desc = 'End of word back' })
vim.keymap.set({ 'n', 'o', 'x' }, '<M-n>', 'gE', { desc = 'End of WORD back' })
vim.keymap.set({ 'n', 'o', 'x' }, 'I', 'e', { desc = 'End of word forward' })
vim.keymap.set({ 'n', 'o', 'x' }, '<M-i>', 'E', { desc = 'End of WORD forward' })

-- Navigation
vim.keymap.set('n', '<M-Left>', '<C-o>', { desc = 'Navigate back' })
vim.keymap.set('n', '<M-Right>', '<C-i>', { desc = 'Navigate forward' })
vim.keymap.set('n', '<M-Down>', '<C-]>', { desc = 'Go to subject' })
vim.keymap.set({ 'n', 'x' }, 'j', '<C-u>zz', { desc = 'Half page up (centered)' })
vim.keymap.set({ 'n', 'x' }, 'm', '<C-d>zz', { desc = 'Half page down (centered)' })

-- Remap Ctrl-n and Ctrl-p in the command-line mode
vim.keymap.set('c', '<Down>', '<C-n>', { desc = 'Next command' })
vim.keymap.set('c', '<Up>', '<C-p>', { desc = 'Previous command' })

-- Make Ctrl-Backspace work
vim.keymap.set('n', '<C-h>', 'db', { desc = 'Ctrl + Backspace' })
vim.keymap.set({ 'c', 'i' }, '<C-h>', '<C-w>', { desc = 'Ctrl + Backspace' })

-- Make Ctrl-Delete work
vim.keymap.set('n', '<C-Del>', 'dw', { desc = 'Ctrl + Delete' })
vim.keymap.set('i', '<C-Del>', '<C-o>dw', { desc = 'Ctrl + Delete' })
vim.keymap.set('c', '<C-Del>', '<C-Right><C-w>', { desc = 'Ctrl + Delete' })

-- Text objects
vim.keymap.set({ 'o', 'v' }, 'r', 'i', { desc = 'O/V mode: inner (i)' })
vim.keymap.set({ 'o', 'v' }, 't', 'a', { desc = 'O/V mode: a/an (a)' })
vim.keymap.set({ 'o', 'v' }, 'R', 'r', { desc = 'Replace' })

-- Folds
vim.keymap.set({ 'n', 'x' }, 'b', 'z', { desc = 'Folding prefix' })
vim.keymap.set({ 'n', 'x' }, 'bb', 'zb', { desc = 'Scroll line and cursor to bottom' })
vim.keymap.set({ 'n', 'x' }, 'bu', 'zk', { desc = 'Move up to fold' })
vim.keymap.set({ 'n', 'x' }, 'be', 'zj', { desc = 'Move down to fold' })

-- Copy/paste
vim.keymap.set({ 'n', 'o', 'x' }, 'c', 'y', { desc = 'Copy' })
vim.keymap.set({ 'n', 'x' }, 'v', 'p', { desc = 'Paste' })
vim.keymap.set('n', 'C', 'y$', { desc = 'Copy to end of line' })
vim.keymap.set('x', 'C', 'y', { desc = 'Copy selection' })
vim.keymap.set({ 'n', 'x' }, 'V', 'P', { desc = 'Paste before' })

-- Undo/redo
vim.keymap.set('n', 'z', 'u', { desc = 'Undo' })
vim.keymap.set('n', 'gz', 'U', { desc = 'Redo all changes' })
vim.keymap.set('n', 'Z', '<C-r>', { desc = 'Redo last change' })

-- Insert mode
vim.keymap.set('n', 's', 'i', { desc = 'Insert' })
vim.keymap.set('n', 'S', 'I', { desc = 'Insert at line start' })
vim.keymap.set('n', 't', 'a', { desc = 'Append' })
vim.keymap.set('n', 'T', 'A', { desc = 'Append at line end' })

-- Change
vim.keymap.set({ 'n', 'o', 'x' }, 'w', 'c', { desc = 'Change' })
vim.keymap.set({ 'n', 'x' }, 'W', 'C', { desc = 'Change to end of line' })

-- Visual mode
vim.keymap.set({ 'n', 'x' }, 'a', 'v', { desc = 'Visual mode' })
vim.keymap.set({ 'n', 'x' }, 'A', 'V', { desc = 'Line-wise visual mode' })
vim.keymap.set('v', 'S', 'I', { desc = 'Insert in visual mode' })

-- Search
vim.keymap.set({ 'n', 'o', 'x' }, 'k', 'nzzzv', { desc = 'Next search result' })
vim.keymap.set({ 'n', 'o', 'x' }, 'K', 'Nzzzv', { desc = 'Previous search result' })

-- 'til operations
vim.keymap.set({ 'n', 'o', 'x' }, 'p', 't', { desc = "'til" })
vim.keymap.set({ 'n', 'o', 'x' }, 'P', 'T', { desc = "'til backward" })

-- Diffput fix
vim.keymap.set('n', 'dt', 'dp', { desc = "diffput (t for 'transfer')" })

-- Macros
vim.keymap.set('n', 'Q', '@q', { desc = "replay the 'q' macro" })

-- Screen navigation
vim.keymap.set({ 'n', 'v' }, 'B', 'L', { desc = 'Cursor to bottom of screen' })

-- Miscellaneous
vim.keymap.set({ 'n', 'x' }, 'gX', 'X', { desc = 'Original X' })
vim.keymap.set({ 'n', 'x' }, 'gU', 'U', { desc = 'Original U' })
vim.keymap.set({ 'n', 'x' }, 'gQ', 'Q', { desc = 'Original Q' })
vim.keymap.set({ 'n', 'x' }, 'gK', 'K', { desc = 'Original K' })
vim.keymap.set({ 'n', 'x' }, 'gh', 'K', { desc = 'Alias for K' })

-- Window navigation
vim.keymap.set('n', '<C-n>', '<C-w>h', { desc = 'Previous window' })
vim.keymap.set('n', '<C-u>', '<C-w>k', { desc = 'Window above' })
vim.keymap.set('n', '<C-e>', '<C-w>j', { desc = 'Window below' })
vim.keymap.set('n', '<C-i>', '<C-w>l', { desc = 'Next window' })
vim.keymap.set('n', '<C-S-n>', '<C-w>H', { desc = 'Move window left' })
vim.keymap.set('n', '<C-S-U>', '<C-w>K', { desc = 'Move window up' })
vim.keymap.set('n', '<C-S-E>', '<C-w>J', { desc = 'Move window down' })
vim.keymap.set('n', '<C-S-I>', '<C-w>L', { desc = 'Move window right' })
vim.keymap.set('n', '<M-w><C-n>', '<nop>', { desc = 'Disable empty buffer spawn' })

--- wtf
vim.api.nvim_del_keymap('x', 'a%')
vim.keymap.set('n', '<C-z>', '<Nop>')

-- vim: ts=2 sts=2 sw=2 et

