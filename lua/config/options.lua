vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = {"menu", "menuone", "noselect"}
vim.opt.mouse = "a"

vim.opt.tabstop = 2 		-- number of visual spaces per TAB
vim.opt.softtabstop = 2 	-- number of visual spaces per TAB
vim.opt.shiftwidth = 2 		-- insert 4 spaces on a tab
vim.opt.expandtab = true 	-- tabs are spaces, mainly because of python

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.showmode = false

vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.scrolloff = 10
vim.opt.wrap = false

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  callback = function()
    vim.highlight.on_yank()
  end,
})
