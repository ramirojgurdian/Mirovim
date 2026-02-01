local o = vim.o
local opt = vim.opt

o.number = true
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
o.inccommand = 'split'
o.cursorline = true
o.scrolloff = 10
o.confirm = true
o.clipboard = 'unnamedplus'

opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
opt.number = true
opt.relativenumber = true
opt.clipboard:append("unnamedplus")
opt.expandtab = true -- Use spaces instead of tabs
opt.shiftwidth = 2   -- Number of spaces to use for each step of (auto)indent
opt.tabstop = 2      -- Number of spaces that a <Tab> in the file counts for
opt.softtabstop = 2  -- Number of spaces that a <Tab> counts for while performing editing operations

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
