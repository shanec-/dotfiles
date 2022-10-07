local builtin = require('telescope.builtin')
local opts = { noremap = true, silent = true }
-- Shorten function name
local keymap = vim.api.nvim_set_keymap

vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
vim.keymap.set('n', '<C-o>', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})
