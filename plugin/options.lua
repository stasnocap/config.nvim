local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.mouse = 'a'
opt.showmode = false
opt.breakindent = true
opt.undofile = true
opt.ignorecase = true
opt.smartcase = true
opt.signcolumn = 'yes'
opt.updatetime = 250
opt.timeoutlen = 300
opt.splitright = true
opt.splitbelow = true
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
opt.inccommand = 'split'
opt.cursorline = true
opt.scrolloff = 10
opt.confirm = true
opt.wrap = true
vim.opt.guicursor = "n-v-c-i-r-sm:block-blinkon250"

-- vim: ts=2 sts=2 sw=2 et
