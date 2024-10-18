vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- define common options
local opts = {
  noremap = true,   -- non-recursive
  silent = true,    -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Buffer navigation
vim.keymap.set("n", "<tab>", ":BufferNext<CR>")
vim.keymap.set("n", "<S-tab>", ":BufferPrevious<CR>")
vim.keymap.set("n", "<leader>x", ":BufferClose<CR>")

-- useful edit keymaps
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Telescope keymaps
vim.keymap.set("n", "<leader>sf", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>sw", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>th", ":Telescope colorscheme<CR>")

-- Neotree file explorer
vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left toggle<CR>")

-- disable highlight
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>")

-- disable diagnostic
vim.keymap.set("n", "<leader>ud", ":lua vim.diagnostic.enable(not vim.diagnostic.is_enabled())<CR>" )

-- comment
vim.keymap.set("n", "<leader>/", "gcc", {remap = true})
