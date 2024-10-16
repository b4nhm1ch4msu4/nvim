vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left toggle<CR>")

-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>th", ":Telescope colorscheme<CR>")

vim.keymap.set("n", "<leader>fb", vim.lsp.buf.format, {})
vim.keymap.set({"n","v"}, "<leader>/", "gcc", { remap = true })

vim.keymap.set("n", "<tab>", ":BufferNext<CR>")
vim.keymap.set("n", "<S-tab>", ":BufferPrevious<CR>")
vim.keymap.set("n", "<leader>x", ":BufferClose<CR>")

vim.keymap.set("n", "<C-/>", ":ToggleTerm<CR>")
vim.keymap.set("t", "<C-/>", "<C-\\><C-n>:ToggleTerm<CR>", {remap = true})
