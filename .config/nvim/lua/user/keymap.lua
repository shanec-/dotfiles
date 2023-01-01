M = {}

local tbuiltin = require('telescope.builtin')

local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n","<Leader><CR>", ":so ~/.config/nvim/init.lua<CR>", opts)

-- window
keymap('n','<leader>h', ':wincmd h<CR>', opts)
keymap('n','<leader>j', ':wincmd j<CR>', opts)
keymap('n','<leader>k', ':wincmd k<CR>', opts)
keymap('n','<leader>l', ':wincmd l<CR>', opts)
keymap('n','<leader>pv', ':Sex!<CR>', opts)
keymap('n','<Leader>+', ':vertical resize +5<CR>', opts)
keymap('n','<Leader>-', ':vertical resize -5<CR>', opts)
keymap('n','<Leader>rp', ':resize 100<CR>', opts)

-- helpers
keymap('n','<leader>p', '"0p', opts)
keymap('n', '<C-/>', ':Commentary<CR>', opts)

-- telescope
vim.keymap.set('n', '<C-p>', tbuiltin.find_files, {})
vim.keymap.set('n', '<C-f>', tbuiltin.live_grep, {})
vim.keymap.set('n', '<C-g>', tbuiltin.git_files, {})
-- vim.keymap.set('n', '<C-o>', tbuiltin.buffers, {})
vim.keymap.set('n', 'fh', tbuiltin.help_tags, {})

-- lsp
keymap('n', '<leader>fu', ':Telescope lsp_references<CR>', opts)
keymap('n', '<leader>gd', ':Telescope lsp_definitions<CR>', opts)
keymap('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>', opts)
keymap('n', '<leader>kk', ':lua vim.lsp.buf.hover()<CR>', opts)
keymap('n', '<leader>dn', ':lua vim.lsp.diagnostic.goto_next()<CR>', opts)
keymap('n', '<leader>dN', ':lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
keymap('n', '<leader>dd', ':Telescope lsp_document_diagnostics<CR>', opts)
keymap('n', '<leader>dD', ':Telescope lsp_workspace_diagnostics<CR>', opts)
keymap('n', '<leader>xx', ':Telescope lsp_code_actions<CR>', opts)
keymap('n', '<leader>xd', ':%Telescope lsp_range_code_actions<CR>', opts)

-- keymap('n', '<C-k>', ':lua vim.lsp.buf.signature_help()<CR>', opts)

return M
