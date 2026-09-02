vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set('n', '<leader>t', ':botright new | resize 10 | term<CR>A', opts)
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)
