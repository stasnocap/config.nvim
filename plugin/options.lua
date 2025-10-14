local o = vim.o

o.number = true
o.relativenumber = true
o.mouse = 'a'
o.showmode = false
o.breakindent = true
o.undofile = true
o.ignorecase = true
o.smartcase = true
o.signcolumn = 'yes'
o.updatetime = 250
o.timeoutlen = 300
o.splitright = true
o.splitbelow = true
o.list = true
o.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
o.inccommand = 'split'
o.cursorline = true
o.scrolloff = 10
o.confirm = true
o.wrap = true
o.guicursor = "n-v-c-i-r-sm:block-blinkon250-blinkoff250"
o.encoding = "utf-8"
o.fileencodings = {  "utf-8", "cp1251" }
o.expandtab = true

-- vim: ts=2 sts=2 sw=2 et
