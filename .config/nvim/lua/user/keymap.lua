M = {}
local opts = { noremap = true, silent = true }
-- Shorten function name
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n","<Leader><CR>", ":so ~/.config/nvim/init.lua<CR>", opts)

-- window
keymap("n","<leader>h", ":wincmd h<CR>", opts)
keymap("n","<leader>j", ":wincmd j<CR>", opts)
keymap("n","<leader>k", ":wincmd k<CR>", opts)
keymap("n","<leader>l", ":wincmd l<CR>", opts)
keymap("n","<leader>pv", ":Sex!<CR>", opts)
keymap("n","<Leader>+", ":vertical resize +5<CR>", opts)
keymap("n","<Leader>-", ":vertical resize -5<CR>", opts)
keymap("n","<Leader>rp", ":resize 100<CR>", opts)

-- past
keymap("n","<Leader>p", "\"0p", opts)

--nnoremap <C-/> :Commentary<CR>


return M
